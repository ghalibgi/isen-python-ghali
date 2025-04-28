from django.test import TestCase
from django.urls import reverse

class DarkModeTestCase(TestCase):
    def test_dark_mode_button_exists(self):
        """Test that the Dark Mode button is present on the home page."""
        response = self.client.get(reverse('home'))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, 'id="darkModeToggle"')
