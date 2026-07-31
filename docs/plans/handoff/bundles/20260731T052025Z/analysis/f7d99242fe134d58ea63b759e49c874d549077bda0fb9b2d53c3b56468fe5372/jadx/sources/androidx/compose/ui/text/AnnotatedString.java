package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnnotatedString implements CharSequence {
    public final List annotations;
    public final ArrayList paragraphStylesOrNull;
    public final ArrayList spanStylesOrNull;
    public final String text;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Annotation {
    }

    static {
        WeakCache weakCache = SaversKt.AnnotatedStringSaver;
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

    public final List getLinkAnnotations(int i) {
        List list = this.annotations;
        if (list == null) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            Range range = (Range) obj;
            if ((range.item instanceof LinkAnnotation) && AnnotatedStringKt.intersect(0, i, range.start, range.end)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
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

    public final AnnotatedString mapAnnotations(Function1 function1) {
        Builder builder = new Builder(this);
        ArrayList arrayList = builder.annotations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Range range = (Range) function1.invoke(((Builder.MutableRange) arrayList.get(i)).toRange(Integer.MIN_VALUE));
            arrayList.set(i, new Builder.MutableRange(range.start, range.end, range.item, range.tag));
        }
        return builder.toAnnotatedString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
    
        if (r2.isEmpty() != false) goto L29;
     */
    @Override // java.lang.CharSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.text.AnnotatedString subSequence(int r10, int r11) {
        /*
            r9 = this;
            r0 = 0
            if (r10 > r11) goto L5
            r1 = 1
            goto L6
        L5:
            r1 = r0
        L6:
            r2 = 41
            java.lang.String r3 = "start ("
            if (r1 != 0) goto L26
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            r1.append(r10)
            java.lang.String r4 = ") should be less or equal to end ("
            r1.append(r4)
            r1.append(r11)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            androidx.compose.ui.text.internal.InlineClassHelperKt.throwIllegalArgumentException(r1)
        L26:
            java.lang.String r1 = r9.text
            if (r10 != 0) goto L31
            int r4 = r1.length()
            if (r11 != r4) goto L31
            return r9
        L31:
            java.lang.String r1 = r1.substring(r10, r11)
            androidx.compose.ui.text.AnnotatedString r4 = androidx.compose.ui.text.AnnotatedStringKt.EmptyAnnotatedString
            if (r10 > r11) goto L3a
            goto L54
        L3a:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            r4.append(r10)
            java.lang.String r3 = ") should be less than or equal to end ("
            r4.append(r3)
            r4.append(r11)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            androidx.compose.ui.text.internal.InlineClassHelperKt.throwIllegalArgumentException(r2)
        L54:
            java.util.List r9 = r9.annotations
            if (r9 != 0) goto L59
            goto L99
        L59:
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r9.size()
            r2.<init>(r3)
            int r3 = r9.size()
        L66:
            if (r0 >= r3) goto L93
            java.lang.Object r4 = r9.get(r0)
            androidx.compose.ui.text.AnnotatedString$Range r4 = (androidx.compose.ui.text.AnnotatedString.Range) r4
            int r5 = r4.start
            int r6 = r4.end
            boolean r5 = androidx.compose.ui.text.AnnotatedStringKt.intersect(r10, r11, r5, r6)
            if (r5 == 0) goto L90
            androidx.compose.ui.text.AnnotatedString$Range r5 = new androidx.compose.ui.text.AnnotatedString$Range
            java.lang.Object r7 = r4.item
            int r8 = r4.start
            int r8 = java.lang.Math.max(r10, r8)
            int r8 = r8 - r10
            int r6 = java.lang.Math.min(r11, r6)
            int r6 = r6 - r10
            java.lang.String r4 = r4.tag
            r5.<init>(r8, r6, r7, r4)
            r2.add(r5)
        L90:
            int r0 = r0 + 1
            goto L66
        L93:
            boolean r9 = r2.isEmpty()
            if (r9 == 0) goto L9a
        L99:
            r2 = 0
        L9a:
            androidx.compose.ui.text.AnnotatedString r9 = new androidx.compose.ui.text.AnnotatedString
            r9.<init>(r2, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.AnnotatedString.subSequence(int, int):androidx.compose.ui.text.AnnotatedString");
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.text;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements Appendable {
        public final ArrayList annotations;
        public final ArrayList styleStack;
        public final StringBuilder text;

        public Builder() {
            this.text = new StringBuilder(16);
            this.styleStack = new ArrayList();
            this.annotations = new ArrayList();
            new ArrayList();
        }

        public final void addStyle(SpanStyle spanStyle, int i, int i2) {
            this.annotations.add(new MutableRange(spanStyle, i, i2, 8));
        }

        public final void append(int i, int i2, CharSequence charSequence) {
            boolean z = charSequence instanceof AnnotatedString;
            StringBuilder sb = this.text;
            if (!z) {
                sb.append(charSequence, i, i2);
                return;
            }
            AnnotatedString annotatedString = (AnnotatedString) charSequence;
            int length = sb.length();
            sb.append((CharSequence) annotatedString.text, i, i2);
            List localAnnotations = AnnotatedStringKt.getLocalAnnotations(annotatedString, i, i2, null);
            if (localAnnotations != null) {
                int size = localAnnotations.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Range range = (Range) localAnnotations.get(i3);
                    this.annotations.add(new MutableRange(range.start + length, range.end + length, range.item, range.tag));
                }
            }
        }

        public final void pop(int i) {
            ArrayList arrayList = this.styleStack;
            if (i >= arrayList.size()) {
                InlineClassHelperKt.throwIllegalStateException(i + " should be less than " + arrayList.size());
            }
            while (arrayList.size() - 1 >= i) {
                pop();
            }
        }

        public final int pushStyle(SpanStyle spanStyle) {
            MutableRange mutableRange = new MutableRange(spanStyle, this.text.length(), 0, 12);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return r5.size() - 1;
        }

        public final AnnotatedString toAnnotatedString() {
            StringBuilder sb = this.text;
            String sb2 = sb.toString();
            ArrayList arrayList = this.annotations;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((MutableRange) arrayList.get(i)).toRange(sb.length()));
            }
            return new AnnotatedString(sb2, arrayList2);
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class MutableRange {
            public int end;
            public final Object item;
            public final int start;
            public final String tag;

            public /* synthetic */ MutableRange(Annotation annotation, int i, int i2, int i3) {
                this(i, (i3 & 4) != 0 ? Integer.MIN_VALUE : i2, annotation, (i3 & 8) != 0 ? "" : "androidx.compose.foundation.text.inlineContent");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) obj;
                return Intrinsics.areEqual(this.item, mutableRange.item) && this.start == mutableRange.start && this.end == mutableRange.end && Intrinsics.areEqual(this.tag, mutableRange.tag);
            }

            public final int hashCode() {
                Object obj = this.item;
                return this.tag.hashCode() + ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.start) * 31) + this.end) * 31);
            }

            public final Range toRange(int i) {
                int i2 = this.end;
                if (i2 != Integer.MIN_VALUE) {
                    i = i2;
                }
                if (!(i != Integer.MIN_VALUE)) {
                    InlineClassHelperKt.throwIllegalStateException("Item.end should be set first");
                }
                return new Range(this.start, i, this.item, this.tag);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("MutableRange(item=");
                sb.append(this.item);
                sb.append(", start=");
                sb.append(this.start);
                sb.append(", end=");
                sb.append(this.end);
                sb.append(", tag=");
                return CameraDevices$CC.m(sb, this.tag, ')');
            }

            public MutableRange(int i, int i2, Object obj, String str) {
                this.item = obj;
                this.start = i;
                this.end = i2;
                this.tag = str;
            }
        }

        public Builder(AnnotatedString annotatedString) {
            this();
            append(annotatedString);
        }

        public final void pop() {
            ArrayList arrayList = this.styleStack;
            if (arrayList.isEmpty()) {
                InlineClassHelperKt.throwIllegalStateException("Nothing to pop.");
            }
            ((MutableRange) Modifier.CC.m(1, arrayList)).end = this.text.length();
        }

        public final void append(String str) {
            this.text.append(str);
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                append((AnnotatedString) charSequence);
                return this;
            }
            this.text.append(charSequence);
            return this;
        }

        @Override // java.lang.Appendable
        public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
            append(i, i2, charSequence);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c) {
            this.text.append(c);
            return this;
        }

        public final void append(AnnotatedString annotatedString) {
            StringBuilder sb = this.text;
            int length = sb.length();
            sb.append(annotatedString.text);
            List list = annotatedString.annotations;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Range range = (Range) list.get(i);
                    this.annotations.add(new MutableRange(range.start + length, range.end + length, range.item, range.tag));
                }
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Range {
        public final int end;
        public final Object item;
        public final int start;
        public final String tag;

        public Range(int i, int i2, Object obj, String str) {
            this.item = obj;
            this.start = i;
            this.end = i2;
            this.tag = str;
            if (i <= i2) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Reversed range is not supported");
        }

        public static Range copy$default(Range range, Annotation annotation, int i, int i2) {
            Object obj = annotation;
            if ((i2 & 1) != 0) {
                obj = range.item;
            }
            int i3 = range.start;
            if ((i2 & 4) != 0) {
                i = range.end;
            }
            String str = range.tag;
            range.getClass();
            return new Range(i3, i, obj, str);
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
            return CameraDevices$CC.m(sb, this.tag, ')');
        }

        public Range(int i, int i2, Object obj) {
            this(i, i2, obj, "");
        }
    }

    public /* synthetic */ AnnotatedString(String str) {
        this(str, EmptyList.INSTANCE);
    }

    public AnnotatedString(String str, List list) {
        this(list.isEmpty() ? null : list, str);
    }
}
