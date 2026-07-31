package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnnotatedString implements CharSequence {
    public final List annotations;
    public final ArrayList paragraphStylesOrNull;
    public final ArrayList spanStylesOrNull;
    public final String text;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Annotation {
    }

    static {
        CardView.AnonymousClass1 anonymousClass1 = SaversKt.AnnotationRangeListSaver;
    }

    public AnnotatedString(List list, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        this.annotations = list;
        this.text = str;
        if (list != null) {
            int size = list.size();
            arrayList = null;
            arrayList2 = null;
            for (int i = 0; i < size; i++) {
                Range range = (Range) list.get(i);
                Object obj = range.item;
                if (obj instanceof SpanStyle) {
                    arrayList = arrayList == null ? new ArrayList() : arrayList;
                    arrayList.add(range);
                } else if (obj instanceof ParagraphStyle) {
                    arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList2.add(range);
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        this.spanStylesOrNull = arrayList;
        this.paragraphStylesOrNull = arrayList2;
        List sortedWith = arrayList2 != null ? CollectionsKt.sortedWith(arrayList2, new AnnotatedString$special$$inlined$sortedBy$1(0)) : null;
        if (sortedWith == null || sortedWith.isEmpty()) {
            return;
        }
        int i2 = ((Range) CollectionsKt.first(sortedWith)).end;
        MutableIntList mutableIntList = IntListKt.EmptyIntList;
        MutableIntList mutableIntList2 = new MutableIntList(1);
        mutableIntList2.add(i2);
        int size2 = sortedWith.size();
        for (int i3 = 1; i3 < size2; i3++) {
            Range range2 = (Range) sortedWith.get(i3);
            while (true) {
                if (mutableIntList2._size != 0) {
                    int last = mutableIntList2.last();
                    int i4 = range2.start;
                    int i5 = range2.end;
                    if (i4 >= last) {
                        mutableIntList2.removeAt(mutableIntList2._size - 1);
                    } else if (i5 > last) {
                        InlineClassHelperKt.throwIllegalArgumentException("Paragraph overlap not allowed, end " + i5 + " should be less than or equal to " + last);
                    }
                }
            }
            mutableIntList2.add(range2.end);
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.text.charAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return Intrinsics.areEqual(this.text, annotatedString.text) && Intrinsics.areEqual(this.annotations, annotatedString.annotations);
    }

    public final int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        List list = this.annotations;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.text.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
    
        if (r0.isEmpty() != false) goto L26;
     */
    @Override // java.lang.CharSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence subSequence(int r10, int r11) {
        /*
            r9 = this;
            r0 = 41
            java.lang.String r1 = "start ("
            if (r10 > r11) goto L8
            goto L22
        L8:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r1)
            r2.append(r10)
            java.lang.String r3 = ") should be less or equal to end ("
            r2.append(r3)
            r2.append(r11)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            androidx.compose.ui.text.internal.InlineClassHelperKt.throwIllegalArgumentException(r2)
        L22:
            java.lang.String r2 = r9.text
            if (r10 != 0) goto L2d
            int r3 = r2.length()
            if (r11 != r3) goto L2d
            return r9
        L2d:
            java.lang.String r2 = r2.substring(r10, r11)
            int r3 = androidx.compose.ui.text.AnnotatedStringKt.$r8$clinit
            if (r10 > r11) goto L36
            goto L50
        L36:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            r3.append(r10)
            java.lang.String r1 = ") should be less than or equal to end ("
            r3.append(r1)
            r3.append(r11)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            androidx.compose.ui.text.internal.InlineClassHelperKt.throwIllegalArgumentException(r0)
        L50:
            java.util.List r9 = r9.annotations
            if (r9 != 0) goto L55
            goto L96
        L55:
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.size()
            r0.<init>(r1)
            int r1 = r9.size()
            r3 = 0
        L63:
            if (r3 >= r1) goto L90
            java.lang.Object r4 = r9.get(r3)
            androidx.compose.ui.text.AnnotatedString$Range r4 = (androidx.compose.ui.text.AnnotatedString.Range) r4
            int r5 = r4.start
            int r6 = r4.end
            boolean r5 = androidx.compose.ui.text.AnnotatedStringKt.intersect(r10, r11, r5, r6)
            if (r5 == 0) goto L8d
            androidx.compose.ui.text.AnnotatedString$Range r5 = new androidx.compose.ui.text.AnnotatedString$Range
            java.lang.Object r7 = r4.item
            int r8 = r4.start
            int r8 = java.lang.Math.max(r10, r8)
            int r8 = r8 - r10
            int r6 = java.lang.Math.min(r11, r6)
            int r6 = r6 - r10
            java.lang.String r4 = r4.tag
            r5.<init>(r8, r4, r7, r6)
            r0.add(r5)
        L8d:
            int r3 = r3 + 1
            goto L63
        L90:
            boolean r9 = r0.isEmpty()
            if (r9 == 0) goto L97
        L96:
            r0 = 0
        L97:
            androidx.compose.ui.text.AnnotatedString r9 = new androidx.compose.ui.text.AnnotatedString
            r9.<init>(r0, r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.AnnotatedString.subSequence(int, int):java.lang.CharSequence");
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.text;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Range {
        public final int end;
        public final Object item;
        public final int start;
        public final String tag;

        public Range(int i, String str, Object obj, int i2) {
            this.item = obj;
            this.start = i;
            this.end = i2;
            this.tag = str;
            if (i <= i2) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Reversed range is not supported");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            return Intrinsics.areEqual(this.item, range.item) && this.start == range.start && this.end == range.end && Intrinsics.areEqual(this.tag, range.tag);
        }

        public final int hashCode() {
            Object obj = this.item;
            return this.tag.hashCode() + ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.start) * 31) + this.end) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Range(item=");
            sb.append(this.item);
            sb.append(", start=");
            sb.append(this.start);
            sb.append(", end=");
            sb.append(this.end);
            sb.append(", tag=");
            return Modifier.CC.m(sb, this.tag, ')');
        }

        public Range(Object obj, int i, int i2) {
            this(i, "", obj, i2);
        }
    }

    public /* synthetic */ AnnotatedString(String str) {
        this(str, EmptyList.INSTANCE);
    }

    public AnnotatedString(String str, List list) {
        this(list.isEmpty() ? null : list, str);
    }
}
