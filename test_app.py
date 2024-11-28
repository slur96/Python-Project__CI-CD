import pytest
from app import app  # Import your Flask app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_get_current_time(client):
    """Test the root endpoint."""
    response = client.get("/")
    assert response.status_code == 200
    assert b"The current time of the day is" in response.data  