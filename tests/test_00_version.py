import roi_extract


def test_version() -> None:
    assert roi_extract.__version__ != "999"
