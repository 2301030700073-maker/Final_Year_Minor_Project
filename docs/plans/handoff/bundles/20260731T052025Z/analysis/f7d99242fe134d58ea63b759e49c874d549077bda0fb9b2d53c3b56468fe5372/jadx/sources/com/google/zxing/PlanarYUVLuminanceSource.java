package com.google.zxing;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraPipe$ThreadConfig;
import androidx.collection.CircularArray;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.core.util.DebugUtils;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.message.html.EmailSection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlanarYUVLuminanceSource {
    public final /* synthetic */ int $r8$classId = 1;
    public int dataHeight;
    public int dataWidth;
    public int height;
    public int width;
    public final Object yuvData;

    public PlanarYUVLuminanceSource(AnnotatedString annotatedString, long j) {
        String str = annotatedString.text;
        EmailSection.Builder builder = new EmailSection.Builder(2);
        builder.text = str;
        builder.quoteDepth = -1;
        builder.indent = -1;
        this.yuvData = builder;
        this.width = TextRange.m702getMinimpl(j);
        this.height = TextRange.m701getMaximpl(j);
        this.dataWidth = -1;
        this.dataHeight = -1;
        int m702getMinimpl = TextRange.m702getMinimpl(j);
        int m701getMaximpl = TextRange.m701getMaximpl(j);
        if (m702getMinimpl < 0 || m702getMinimpl > str.length()) {
            Regex$$ExternalSyntheticBUOutline0.m(str.length(), CameraDevices$CC.m30m(m702getMinimpl, "start (", ") offset is outside of text region "));
            throw null;
        }
        if (m701getMaximpl < 0 || m701getMaximpl > str.length()) {
            Regex$$ExternalSyntheticBUOutline0.m(str.length(), CameraDevices$CC.m30m(m701getMaximpl, "end (", ") offset is outside of text region "));
            throw null;
        }
        if (m702getMinimpl <= m701getMaximpl) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(m702getMinimpl, m701getMaximpl, "Do not set reversed range: ", " > "));
        throw null;
    }

    public void delete$ui_text(int i, int i2) {
        long TextRange = ParagraphKt.TextRange(i, i2);
        ((EmailSection.Builder) this.yuvData).replace(i, "", i2);
        long m792updateRangeAfterDeletepWDy79M = DebugUtils.m792updateRangeAfterDeletepWDy79M(ParagraphKt.TextRange(this.width, this.height), TextRange);
        setSelectionStart(TextRange.m702getMinimpl(m792updateRangeAfterDeletepWDy79M));
        setSelectionEnd(TextRange.m701getMaximpl(m792updateRangeAfterDeletepWDy79M));
        int i3 = this.dataWidth;
        if (i3 != -1) {
            long m792updateRangeAfterDeletepWDy79M2 = DebugUtils.m792updateRangeAfterDeletepWDy79M(ParagraphKt.TextRange(i3, this.dataHeight), TextRange);
            if (TextRange.m699getCollapsedimpl(m792updateRangeAfterDeletepWDy79M2)) {
                this.dataWidth = -1;
                this.dataHeight = -1;
            } else {
                this.dataWidth = TextRange.m702getMinimpl(m792updateRangeAfterDeletepWDy79M2);
                this.dataHeight = TextRange.m701getMaximpl(m792updateRangeAfterDeletepWDy79M2);
            }
        }
    }

    public char get$ui_text(int i) {
        EmailSection.Builder builder = (EmailSection.Builder) this.yuvData;
        CircularArray circularArray = (CircularArray) builder.segments;
        if (circularArray == null) {
            return ((String) builder.text).charAt(i);
        }
        if (i < builder.quoteDepth) {
            return ((String) builder.text).charAt(i);
        }
        int gapLength = circularArray.head - circularArray.gapLength();
        int i2 = builder.quoteDepth;
        if (i >= gapLength + i2) {
            return ((String) builder.text).charAt(i - ((gapLength - builder.indent) + i2));
        }
        int i3 = i - i2;
        int i4 = circularArray.tail;
        char[] cArr = (char[]) circularArray.elements;
        return i3 < i4 ? cArr[i3] : cArr[(i3 - i4) + circularArray.capacityBitmask];
    }

    /* renamed from: getComposition-MzsxiRA$ui_text, reason: not valid java name */
    public TextRange m950getCompositionMzsxiRA$ui_text() {
        int i = this.dataWidth;
        if (i != -1) {
            return new TextRange(ParagraphKt.TextRange(i, this.dataHeight));
        }
        return null;
    }

    public byte[] getMatrix() {
        byte[] bArr = (byte[]) this.yuvData;
        int i = this.width;
        int i2 = this.height;
        int i3 = this.dataWidth;
        if (i == i3 && i2 == this.dataHeight) {
            return bArr;
        }
        int i4 = i * i2;
        byte[] bArr2 = new byte[i4];
        if (i == i3) {
            System.arraycopy(bArr, 0, bArr2, 0, i4);
            return bArr2;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            System.arraycopy(bArr, i5, bArr2, i6 * i, i);
            i5 += i3;
        }
        return bArr2;
    }

    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= this.height) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Requested row is outside the image: ", i));
            return null;
        }
        int i2 = this.width;
        if (bArr.length < i2) {
            bArr = new byte[i2];
        }
        System.arraycopy((byte[]) this.yuvData, i * this.dataWidth, bArr, 0, i2);
        return bArr;
    }

    public void replace$ui_text(int i, String str, int i2) {
        EmailSection.Builder builder = (EmailSection.Builder) this.yuvData;
        if (i < 0 || i > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i, "start (", ") offset is outside of text region "));
            return;
        }
        if (i2 < 0 || i2 > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i2, "end (", ") offset is outside of text region "));
        } else {
            if (i > i2) {
                UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "Do not set reversed range: ", " > "));
                return;
            }
            builder.replace(i, str, i2);
            setSelectionStart(str.length() + i);
            setSelectionEnd(str.length() + i);
            this.dataWidth = -1;
            this.dataHeight = -1;
        }
    }

    public void setComposition$ui_text(int i, int i2) {
        EmailSection.Builder builder = (EmailSection.Builder) this.yuvData;
        if (i < 0 || i > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i2, "end (", ") offset is outside of text region "));
        } else if (i >= i2) {
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "Do not set reversed or empty range: ", " > "));
        } else {
            this.dataWidth = i;
            this.dataHeight = i2;
        }
    }

    public void setSelection$ui_text(int i, int i2) {
        EmailSection.Builder builder = (EmailSection.Builder) this.yuvData;
        if (i < 0 || i > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > builder.getLength()) {
            Regex$$ExternalSyntheticBUOutline0.m(builder.getLength(), CameraDevices$CC.m30m(i2, "end (", ") offset is outside of text region "));
        } else if (i > i2) {
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "Do not set reversed range: ", " > "));
        } else {
            setSelectionStart(i);
            setSelectionEnd(i2);
        }
    }

    public void setSelectionEnd(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionEnd to a negative value: " + i);
        }
        this.height = i;
    }

    public void setSelectionStart(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionStart to a negative value: " + i);
        }
        this.width = i;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                int i = this.width;
                byte[] bArr = new byte[i];
                int i2 = this.height;
                StringBuilder sb = new StringBuilder((i + 1) * i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    bArr = getRow(i3, bArr);
                    for (int i4 = 0; i4 < i; i4++) {
                        int i5 = bArr[i4] & 255;
                        sb.append(i5 < 64 ? '#' : i5 < 128 ? '+' : i5 < 192 ? '.' : ' ');
                    }
                    sb.append('\n');
                }
                return sb.toString();
            case 1:
            default:
                return super.toString();
            case 2:
                return ((EmailSection.Builder) this.yuvData).toString();
        }
    }

    public PlanarYUVLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4) {
        this.width = i3;
        this.height = i4;
        if (i3 <= i && i4 <= i2) {
            this.yuvData = bArr;
            this.dataWidth = i;
            this.dataHeight = i2;
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Crop rectangle does not fit within image data.");
        throw null;
    }

    public PlanarYUVLuminanceSource(CameraPipe$ThreadConfig cameraPipe$ThreadConfig) {
        cameraPipe$ThreadConfig.getClass();
        this.yuvData = cameraPipe$ThreadConfig;
        this.width = Math.max(4, Runtime.getRuntime().availableProcessors() - 2);
        this.height = 4;
        this.dataWidth = -3;
        this.dataHeight = -1;
    }
}
