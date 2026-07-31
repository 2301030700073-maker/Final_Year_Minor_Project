package androidx.fragment.app;

import android.util.Log;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.Writer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LogWriter extends Writer {
    public final /* synthetic */ int $r8$classId;
    public final Object mBuilder;

    public LogWriter() {
        this.$r8$classId = 0;
        this.mBuilder = new StringBuilder(128);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) {
        switch (this.$r8$classId) {
            case 1:
                String charSequence2 = charSequence.subSequence(i, i2).toString();
                ((TextBuffer) this.mBuilder).append(0, charSequence2.length(), charSequence2);
                return this;
            default:
                return super.append(charSequence, i, i2);
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.$r8$classId) {
            case 0:
                flushBuilder();
                break;
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        switch (this.$r8$classId) {
            case 0:
                flushBuilder();
                break;
        }
    }

    public void flushBuilder() {
        StringBuilder sb = (StringBuilder) this.mBuilder;
        if (sb.length() > 0) {
            Log.d("FragmentManager", sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer
    public void write(int i) {
        switch (this.$r8$classId) {
            case 1:
                TextBuffer textBuffer = (TextBuffer) this.mBuilder;
                char c = (char) i;
                if (textBuffer._inputStart >= 0) {
                    textBuffer.unshare(16);
                }
                textBuffer._resultString = null;
                textBuffer._resultArray = null;
                char[] cArr = textBuffer._currentSegment;
                if (textBuffer._currentSize >= cArr.length) {
                    textBuffer.expand();
                    cArr = textBuffer._currentSegment;
                }
                int i2 = textBuffer._currentSize;
                textBuffer._currentSize = i2 + 1;
                cArr[i2] = c;
                break;
            default:
                super.write(i);
                break;
        }
    }

    public LogWriter(BufferRecycler bufferRecycler) {
        this.$r8$classId = 1;
        this.mBuilder = new TextBuffer(bufferRecycler);
    }

    private final void close$com$fasterxml$jackson$core$io$SegmentedStringWriter() {
    }

    private final void flush$com$fasterxml$jackson$core$io$SegmentedStringWriter() {
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        switch (this.$r8$classId) {
            case 1:
                append(charSequence, i, i2);
                return this;
            default:
                return super.append(charSequence, i, i2);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        switch (this.$r8$classId) {
            case 1:
                write(c);
                return this;
            default:
                return super.append(c);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Appendable append(char c) {
        switch (this.$r8$classId) {
            case 1:
                write(c);
                return this;
            default:
                return super.append(c);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        switch (this.$r8$classId) {
            case 1:
                String charSequence2 = charSequence.toString();
                ((TextBuffer) this.mBuilder).append(0, charSequence2.length(), charSequence2);
                return this;
            default:
                return super.append(charSequence);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        switch (this.$r8$classId) {
            case 1:
                append(charSequence);
                return this;
            default:
                return super.append(charSequence);
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.mBuilder;
        switch (i3) {
            case 0:
                for (int i4 = 0; i4 < i2; i4++) {
                    char c = cArr[i + i4];
                    if (c == '\n') {
                        flushBuilder();
                    } else {
                        ((StringBuilder) obj).append(c);
                    }
                }
                break;
            default:
                ((TextBuffer) obj).append(cArr, i, i2);
                break;
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        switch (this.$r8$classId) {
            case 1:
                ((TextBuffer) this.mBuilder).append(cArr, 0, cArr.length);
                break;
            default:
                super.write(cArr);
                break;
        }
    }

    @Override // java.io.Writer
    public void write(String str) {
        switch (this.$r8$classId) {
            case 1:
                ((TextBuffer) this.mBuilder).append(0, str.length(), str);
                break;
            default:
                super.write(str);
                break;
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        switch (this.$r8$classId) {
            case 1:
                ((TextBuffer) this.mBuilder).append(i, i2, str);
                break;
            default:
                super.write(str, i, i2);
                break;
        }
    }
}
