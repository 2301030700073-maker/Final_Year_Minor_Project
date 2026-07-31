package androidx.compose.foundation.internal;

import android.content.ClipData;
import android.os.Parcel;
import android.text.Annotation;
import android.text.SpannableString;
import android.util.Base64;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ClipboardUtils_androidKt {
    public static final StackTraceElement[] EmptyStackTraceElements = new StackTraceElement[0];

    public static final ClipEntry toClipEntry(AnnotatedString annotatedString) {
        SpannableString spannableString;
        List list = annotatedString.spanStylesOrNull;
        List list2 = EmptyList.INSTANCE;
        List list3 = list == null ? list2 : list;
        CharSequence charSequence = annotatedString.text;
        if (!list3.isEmpty()) {
            SpannableString spannableString2 = new SpannableString(charSequence);
            DecodeHelper decodeHelper = new DecodeHelper();
            decodeHelper.parcel = Parcel.obtain();
            if (list == null) {
                list = list2;
            }
            int size = list.size();
            int i = 0;
            SpannableString spannableString3 = spannableString2;
            while (i < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i);
                SpanStyle spanStyle = (SpanStyle) range.item;
                int i2 = range.start;
                int i3 = range.end;
                decodeHelper.parcel.recycle();
                decodeHelper.parcel = Parcel.obtain();
                TextForegroundStyle textForegroundStyle = spanStyle.textForegroundStyle;
                long j = spanStyle.background;
                long j2 = spanStyle.letterSpacing;
                int i4 = i;
                long j3 = spanStyle.fontSize;
                List list4 = list;
                int i5 = size;
                long mo720getColor0d7_KjU = textForegroundStyle.mo720getColor0d7_KjU();
                long j4 = Color.Unspecified;
                if (Color.m482equalsimpl0(mo720getColor0d7_KjU, j4)) {
                    spannableString = spannableString3;
                } else {
                    decodeHelper.encode((byte) 1);
                    spannableString = spannableString3;
                    decodeHelper.parcel.writeLong(spanStyle.textForegroundStyle.mo720getColor0d7_KjU());
                }
                long j5 = TextUnit.Unspecified;
                byte b = 2;
                if (!TextUnit.m771equalsimpl0(j3, j5)) {
                    decodeHelper.encode((byte) 2);
                    decodeHelper.m199encodeR2X_6o(j3);
                }
                FontWeight fontWeight = spanStyle.fontWeight;
                if (fontWeight != null) {
                    decodeHelper.encode((byte) 3);
                    decodeHelper.parcel.writeInt(fontWeight.weight);
                }
                FontStyle fontStyle = spanStyle.fontStyle;
                if (fontStyle != null) {
                    int i6 = fontStyle.value;
                    decodeHelper.encode((byte) 4);
                    decodeHelper.encode((i6 != 0 && i6 == 1) ? (byte) 1 : (byte) 0);
                }
                FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
                if (fontSynthesis != null) {
                    int i7 = fontSynthesis.value;
                    decodeHelper.encode((byte) 5);
                    if (i7 != 0) {
                        if (i7 == 65535) {
                            b = 1;
                        } else if (i7 != 1) {
                            if (i7 == 2) {
                                b = 3;
                            }
                        }
                        decodeHelper.encode(b);
                    }
                    b = 0;
                    decodeHelper.encode(b);
                }
                String str = spanStyle.fontFeatureSettings;
                if (str != null) {
                    decodeHelper.encode((byte) 6);
                    decodeHelper.parcel.writeString(str);
                }
                if (!TextUnit.m771equalsimpl0(j2, j5)) {
                    decodeHelper.encode((byte) 7);
                    decodeHelper.m199encodeR2X_6o(j2);
                }
                BaselineShift baselineShift = spanStyle.baselineShift;
                if (baselineShift != null) {
                    float f = baselineShift.multiplier;
                    decodeHelper.encode((byte) 8);
                    decodeHelper.encode(f);
                }
                TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
                if (textGeometricTransform != null) {
                    decodeHelper.encode((byte) 9);
                    decodeHelper.encode(textGeometricTransform.scaleX);
                    decodeHelper.encode(textGeometricTransform.skewX);
                }
                if (!Color.m482equalsimpl0(j, j4)) {
                    decodeHelper.encode((byte) 10);
                    decodeHelper.parcel.writeLong(j);
                }
                TextDecoration textDecoration = spanStyle.textDecoration;
                if (textDecoration != null) {
                    decodeHelper.encode((byte) 11);
                    decodeHelper.parcel.writeInt(textDecoration.mask);
                }
                Shadow shadow = spanStyle.shadow;
                if (shadow != null) {
                    decodeHelper.encode((byte) 12);
                    decodeHelper.parcel.writeLong(shadow.color);
                    long j6 = shadow.offset;
                    decodeHelper.encode(Float.intBitsToFloat((int) (j6 >> 32)));
                    decodeHelper.encode(Float.intBitsToFloat((int) (j6 & 4294967295L)));
                    decodeHelper.encode(shadow.blurRadius);
                }
                SpannableString spannableString4 = spannableString;
                spannableString4.setSpan(new Annotation("androidx.compose.text.SpanStyle", Base64.encodeToString(decodeHelper.parcel.marshall(), 0)), i2, i3, 33);
                i = i4 + 1;
                spannableString3 = spannableString4;
                list = list4;
                size = i5;
            }
            charSequence = spannableString3;
        }
        return new ClipEntry(ClipData.newPlainText("plain text", charSequence));
    }
}
