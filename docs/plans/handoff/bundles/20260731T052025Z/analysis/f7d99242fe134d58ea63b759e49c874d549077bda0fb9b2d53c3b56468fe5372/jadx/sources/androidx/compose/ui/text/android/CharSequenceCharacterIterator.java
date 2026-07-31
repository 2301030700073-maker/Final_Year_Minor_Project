package androidx.compose.ui.text.android;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.text.CharacterIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharSequenceCharacterIterator implements CharacterIterator {
    public final CharSequence charSequence;
    public final int end;
    public int index = 0;

    public CharSequenceCharacterIterator(int i, CharSequence charSequence) {
        this.charSequence = charSequence;
        this.end = i;
    }

    @Override // java.text.CharacterIterator
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public final char current() {
        int i = this.index;
        if (i == this.end) {
            return (char) 65535;
        }
        return this.charSequence.charAt(i);
    }

    @Override // java.text.CharacterIterator
    public final char first() {
        this.index = 0;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final int getBeginIndex() {
        return 0;
    }

    @Override // java.text.CharacterIterator
    public final int getEndIndex() {
        return this.end;
    }

    @Override // java.text.CharacterIterator
    public final int getIndex() {
        return this.index;
    }

    @Override // java.text.CharacterIterator
    public final char last() {
        int i = this.end;
        if (i == 0) {
            this.index = i;
            return (char) 65535;
        }
        int i2 = i - 1;
        this.index = i2;
        return this.charSequence.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char next() {
        int i = this.index + 1;
        this.index = i;
        int i2 = this.end;
        if (i < i2) {
            return this.charSequence.charAt(i);
        }
        this.index = i2;
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public final char previous() {
        int i = this.index;
        if (i <= 0) {
            return (char) 65535;
        }
        int i2 = i - 1;
        this.index = i2;
        return this.charSequence.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char setIndex(int i) {
        if (i > this.end || i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("invalid position");
            return (char) 0;
        }
        this.index = i;
        return current();
    }
}
