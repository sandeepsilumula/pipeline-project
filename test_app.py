import pytest
from app import app

# This creates a "fake" web client for testing without actually starting the server
@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

# Test 1: Does the server return a 200 OK status?
def test_home_status_code(client):
    response = client.get('/')
    assert response.status_code == 200

# Test 2: Does the server return the correct JSON message?
def test_home_data(client):
    response = client.get('/')
    assert b"SUCCESS" in response.data
