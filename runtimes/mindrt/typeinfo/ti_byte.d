/*
 * ti_byte.d
 *
 * This module implements the TypeInfo for the byte type.
 *
 * License: Public Domain
 *
 */

module mindrt.typeinfo.ti_byte;

// byte

class TypeInfo_g : TypeInfo {
	char[] toString() {
		return "byte";
	}

	hash_t getHash(void *p) {
		return *cast(byte *)p;
	}

	int equals(void *p1, void *p2) {
		return *cast(byte *)p1 == *cast(byte *)p2;
	}

	int compare(void *p1, void *p2) {
		return *cast(byte *)p1 - *cast(byte *)p2;
	}

	size_t tsize() {
		return byte.sizeof;
	}

	void swap(void *p1, void *p2) {
		byte t;

		t = *cast(byte *)p1;
		*cast(byte *)p1 = *cast(byte *)p2;
		*cast(byte *)p2 = t;
	}
}
