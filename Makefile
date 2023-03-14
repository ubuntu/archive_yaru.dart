.PHONY: goldens
goldens:
	cd example && GDK_BACKEND=x11 GDK_SCALE=1 flutter test integration_test/golden_test.dart -d linux --update-goldens
