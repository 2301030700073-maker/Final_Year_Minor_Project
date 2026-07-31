package org.apache.james.mime4j.field.address;

import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.james.mime4j.io.TextInputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleCharStream {
    public int available;
    public int[] bufcolumn;
    public char[] buffer;
    public int[] bufline;
    public int bufpos;
    public int bufsize;
    public int column;
    public int inBuf;
    public final InputStreamReader inputStream;
    public int line;
    public int maxNextCharInd;
    public boolean prevCharIsCR;
    public boolean prevCharIsLF;
    public final int tabSize;
    public int tokenBegin;

    public SimpleCharStream(TextInputStream textInputStream) {
        InputStreamReader inputStreamReader = new InputStreamReader(textInputStream);
        this.bufpos = -1;
        this.prevCharIsCR = false;
        this.prevCharIsLF = false;
        this.maxNextCharInd = 0;
        this.inBuf = 0;
        this.tabSize = 8;
        this.inputStream = inputStreamReader;
        this.line = 1;
        this.column = 0;
        this.bufsize = 4096;
        this.available = 4096;
        this.buffer = new char[4096];
        this.bufline = new int[4096];
        this.bufcolumn = new int[4096];
    }

    public final void ExpandBuff(boolean z) {
        int i = this.bufsize;
        int i2 = i + 2048;
        char[] cArr = new char[i2];
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        char[] cArr2 = this.buffer;
        int i3 = this.tokenBegin;
        try {
            if (z) {
                System.arraycopy(cArr2, i3, cArr, 0, i - i3);
                System.arraycopy(this.buffer, 0, cArr, this.bufsize - this.tokenBegin, this.bufpos);
                this.buffer = cArr;
                int[] iArr3 = this.bufline;
                int i4 = this.tokenBegin;
                System.arraycopy(iArr3, i4, iArr, 0, this.bufsize - i4);
                System.arraycopy(this.bufline, 0, iArr, this.bufsize - this.tokenBegin, this.bufpos);
                this.bufline = iArr;
                int[] iArr4 = this.bufcolumn;
                int i5 = this.tokenBegin;
                System.arraycopy(iArr4, i5, iArr2, 0, this.bufsize - i5);
                System.arraycopy(this.bufcolumn, 0, iArr2, this.bufsize - this.tokenBegin, this.bufpos);
                this.bufcolumn = iArr2;
                int i6 = (this.bufsize - this.tokenBegin) + this.bufpos;
                this.bufpos = i6;
                this.maxNextCharInd = i6;
            } else {
                System.arraycopy(cArr2, i3, cArr, 0, i - i3);
                this.buffer = cArr;
                int[] iArr5 = this.bufline;
                int i7 = this.tokenBegin;
                System.arraycopy(iArr5, i7, iArr, 0, this.bufsize - i7);
                this.bufline = iArr;
                int[] iArr6 = this.bufcolumn;
                int i8 = this.tokenBegin;
                System.arraycopy(iArr6, i8, iArr2, 0, this.bufsize - i8);
                this.bufcolumn = iArr2;
                int i9 = this.bufpos - this.tokenBegin;
                this.bufpos = i9;
                this.maxNextCharInd = i9;
            }
            int i10 = this.bufsize + 2048;
            this.bufsize = i10;
            this.available = i10;
            this.tokenBegin = 0;
        } catch (Throwable th) {
            throw new Error(th.getMessage());
        }
    }

    public final String GetImage() {
        int i = this.bufpos;
        int i2 = this.tokenBegin;
        char[] cArr = this.buffer;
        return i >= i2 ? new String(cArr, i2, (i - i2) + 1) : new String(cArr, i2, this.bufsize - i2).concat(new String(this.buffer, 0, this.bufpos + 1));
    }

    public final char[] GetSuffix(int i) {
        char[] cArr = new char[i];
        int i2 = this.bufpos;
        int i3 = i2 + 1;
        char[] cArr2 = this.buffer;
        if (i3 >= i) {
            System.arraycopy(cArr2, (i2 - i) + 1, cArr, 0, i);
            return cArr;
        }
        System.arraycopy(cArr2, this.bufsize - ((i - i2) - 1), cArr, 0, (i - i2) - 1);
        System.arraycopy(this.buffer, 0, cArr, (i - r6) - 1, this.bufpos + 1);
        return cArr;
    }

    public final void backup(int i) {
        this.inBuf += i;
        int i2 = this.bufpos - i;
        this.bufpos = i2;
        if (i2 < 0) {
            this.bufpos = i2 + this.bufsize;
        }
    }

    public final char readChar() {
        int i = this.inBuf;
        if (i > 0) {
            this.inBuf = i - 1;
            int i2 = this.bufpos + 1;
            this.bufpos = i2;
            if (i2 == this.bufsize) {
                this.bufpos = 0;
            }
            return this.buffer[this.bufpos];
        }
        int i3 = this.bufpos + 1;
        this.bufpos = i3;
        int i4 = this.maxNextCharInd;
        if (i3 >= i4) {
            InputStreamReader inputStreamReader = this.inputStream;
            int i5 = this.available;
            if (i4 == i5) {
                int i6 = this.bufsize;
                int i7 = this.tokenBegin;
                if (i5 == i6) {
                    if (i7 > 2048) {
                        this.maxNextCharInd = 0;
                        this.bufpos = 0;
                        this.available = i7;
                    } else if (i7 < 0) {
                        this.maxNextCharInd = 0;
                        this.bufpos = 0;
                    } else {
                        ExpandBuff(false);
                    }
                } else if (i5 > i7) {
                    this.available = i6;
                } else if (i7 - i5 < 2048) {
                    ExpandBuff(true);
                } else {
                    this.available = i7;
                }
            }
            try {
                char[] cArr = this.buffer;
                int i8 = this.maxNextCharInd;
                int read = inputStreamReader.read(cArr, i8, this.available - i8);
                if (read == -1) {
                    inputStreamReader.close();
                    throw new IOException();
                }
                this.maxNextCharInd += read;
            } catch (IOException e) {
                this.bufpos--;
                backup(0);
                if (this.tokenBegin == -1) {
                    this.tokenBegin = this.bufpos;
                }
                throw e;
            }
        }
        char[] cArr2 = this.buffer;
        int i9 = this.bufpos;
        char c = cArr2[i9];
        this.column++;
        if (this.prevCharIsLF) {
            this.prevCharIsLF = false;
            int i10 = this.line;
            this.column = 1;
            this.line = i10 + 1;
        } else if (this.prevCharIsCR) {
            this.prevCharIsCR = false;
            if (c == '\n') {
                this.prevCharIsLF = true;
            } else {
                int i11 = this.line;
                this.column = 1;
                this.line = i11 + 1;
            }
        }
        if (c == '\t') {
            int i12 = this.column - 1;
            this.column = i12;
            int i13 = this.tabSize;
            this.column = (i13 - (i12 % i13)) + i12;
        } else if (c == '\n') {
            this.prevCharIsLF = true;
        } else if (c == '\r') {
            this.prevCharIsCR = true;
        }
        this.bufline[i9] = this.line;
        this.bufcolumn[i9] = this.column;
        return c;
    }
}
