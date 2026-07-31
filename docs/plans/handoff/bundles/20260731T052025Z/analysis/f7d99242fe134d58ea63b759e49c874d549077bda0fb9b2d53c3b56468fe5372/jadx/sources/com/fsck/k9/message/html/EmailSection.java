package com.fsck.k9.message.html;

import android.content.res.TypedArray;
import android.util.SparseArray;
import androidx.camera.core.impl.Config;
import androidx.collection.CircularArray;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.view.MenuHostHelper;
import androidx.emoji2.text.EmojiCompat;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.textfield.EndCompoundLayout;
import java.lang.Character;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.field.address.SimpleNode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailSection implements CharSequence {
    public final int length;
    public final int quoteDepth;
    public final List segments;
    public final String text;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Segment {
        public final int endIndex;
        public final int startIndex;

        public Segment(int i, int i2) {
            this.startIndex = i;
            this.endIndex = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Segment)) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.startIndex == segment.startIndex && this.endIndex == segment.endIndex;
        }

        public final int hashCode() {
            return (this.startIndex * 31) + this.endIndex;
        }

        public final String toString() {
            return Config.CC.m("Segment(startIndex=", this.startIndex, ", endIndex=", this.endIndex, ")");
        }
    }

    public EmailSection(Builder builder) {
        List<Segment> list;
        this.quoteDepth = builder.quoteDepth;
        this.text = (String) builder.text;
        int i = builder.indent;
        ArrayList arrayList = (ArrayList) builder.segments;
        int i2 = 0;
        if (i == 0) {
            list = CollectionsKt.toList(arrayList);
        } else {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Segment segment = (Segment) it.next();
                int i3 = this.text.charAt(segment.endIndex - 1) != '\n' ? 0 : 1;
                int i4 = segment.startIndex + builder.indent;
                int i5 = segment.endIndex;
                int i6 = i5 - i3;
                if (i4 > i6) {
                    i4 = i6;
                }
                arrayList2.add(new Segment(i4, i5));
            }
            list = arrayList2;
        }
        this.segments = list;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (Segment segment2 : list) {
            arrayList3.add(Integer.valueOf(segment2.endIndex - segment2.startIndex));
        }
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            i2 += ((Number) it2.next()).intValue();
        }
        this.length = i2;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        int i2 = this.length;
        if (i < 0 || i > i2 - 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m(i, i2, "index: ", "; length: "));
            return (char) 0;
        }
        List list = this.segments;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Segment segment = (Segment) list.get(i3);
            int i4 = segment.endIndex;
            int i5 = segment.startIndex;
            int i6 = i4 - i5;
            if (i < i6) {
                return this.text.charAt(i5 + i);
            }
            i -= i6;
        }
        throw new AssertionError();
    }

    public final Pair findSegmentIndexAndOffset(int i, boolean z) {
        int i2 = 0;
        for (Object obj : this.segments) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            Segment segment = (Segment) obj;
            int i4 = segment.endIndex - segment.startIndex;
            if (i < i4 || (z && i == i4)) {
                return new Pair(Integer.valueOf(i2), Integer.valueOf(i));
            }
            i -= i4;
            i2 = i3;
        }
        throw new AssertionError();
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.length;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        int i3 = this.length;
        if (i < 0 || i > i3 - 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m(i, i3, "startIndex: ", "; length: "));
            return null;
        }
        if (i2 < 0 || i2 > i3) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m(i2, i3, "endIndex: ", "; length: "));
            return null;
        }
        if (i > i2) {
            UriKt$$ExternalSyntheticBUOutline0.m("startIndex > endIndex");
            return null;
        }
        if (i == i2) {
            return "";
        }
        if (i == 0 && i2 == i3) {
            return this;
        }
        Builder builder = new Builder(this.text, this.quoteDepth);
        ArrayList arrayList = (ArrayList) builder.segments;
        Pair findSegmentIndexAndOffset = findSegmentIndexAndOffset(i, false);
        int intValue = ((Number) findSegmentIndexAndOffset.first).intValue();
        int intValue2 = ((Number) findSegmentIndexAndOffset.second).intValue();
        Pair findSegmentIndexAndOffset2 = findSegmentIndexAndOffset(i2, true);
        int intValue3 = ((Number) findSegmentIndexAndOffset2.first).intValue();
        int intValue4 = ((Number) findSegmentIndexAndOffset2.second).intValue();
        List list = this.segments;
        Segment segment = (Segment) list.get(intValue);
        if (intValue == intValue3) {
            int i4 = segment.startIndex;
            builder.addSegment(0, intValue2 + i4, i4 + intValue4);
            return builder.build();
        }
        if (intValue2 == 0) {
            segment.getClass();
            builder.indent = 0;
            arrayList.add(segment);
        } else {
            builder.addSegment(0, segment.startIndex + intValue2, segment.endIndex);
        }
        for (int i5 = intValue + 1; i5 < intValue3; i5++) {
            Segment segment2 = (Segment) list.get(i5);
            segment2.getClass();
            builder.indent = 0;
            arrayList.add(segment2);
        }
        Segment segment3 = (Segment) list.get(intValue3);
        int i6 = segment3.startIndex;
        int i7 = intValue4 + i6;
        if (i7 == segment3.endIndex) {
            builder.indent = 0;
            arrayList.add(segment3);
        } else {
            builder.addSegment(0, i6, i7);
        }
        return builder.build();
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (Segment segment : this.segments) {
            sb.append((CharSequence) this.text, segment.startIndex, segment.endIndex);
        }
        return sb.toString();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public final /* synthetic */ int $r8$classId;
        public int indent;
        public int quoteDepth;
        public Object segments;
        public Object text;

        public Builder(CharSequence charSequence, int i, Locale locale) {
            this.$r8$classId = 1;
            this.text = charSequence;
            if (charSequence.length() < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("input start index is outside the CharSequence");
            }
            if (i < 0 || i > charSequence.length()) {
                InlineClassHelperKt.throwIllegalArgumentException("input end index is outside the CharSequence");
            }
            BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
            this.segments = wordInstance;
            this.quoteDepth = Math.max(0, -50);
            this.indent = Math.min(charSequence.length(), i + 50);
            wordInstance.setText(new CharSequenceCharacterIterator(i, charSequence));
        }

        public void addSegment(int i, int i2, int i3) {
            this.indent = Math.min(this.indent, i);
            ((ArrayList) this.segments).add(new Segment(i2, i3));
        }

        public EmailSection build() {
            if (this.indent == Integer.MAX_VALUE) {
                this.indent = 0;
            }
            return new EmailSection(this);
        }

        public void checkOffsetIsValid(int i) {
            int i2 = this.quoteDepth;
            int i3 = this.indent;
            boolean z = false;
            if (i <= i3 && i2 <= i) {
                z = true;
            }
            if (z) {
                return;
            }
            StringBuilder m91m = Config.CC.m91m("Invalid offset: ", i, ". Valid range is [", i2, " , ");
            m91m.append(i3);
            m91m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m91m.toString());
        }

        public void clearNodeScope() {
            while (this.quoteDepth > this.indent) {
                popNode();
            }
            this.indent = ((Integer) Modifier.CC.m(1, (ArrayList) this.text)).intValue();
        }

        public void closeNodeScope(SimpleNode simpleNode) {
            ArrayList arrayList = (ArrayList) this.text;
            int i = this.quoteDepth - this.indent;
            this.indent = ((Integer) Modifier.CC.m(1, arrayList)).intValue();
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    ((ArrayList) this.segments).add(simpleNode);
                    this.quoteDepth++;
                    return;
                }
                SimpleNode popNode = popNode();
                popNode.getClass();
                SimpleNode[] simpleNodeArr = simpleNode.children;
                if (simpleNodeArr == null) {
                    simpleNode.children = new SimpleNode[i];
                } else if (i2 >= simpleNodeArr.length) {
                    SimpleNode[] simpleNodeArr2 = new SimpleNode[i];
                    System.arraycopy(simpleNodeArr, 0, simpleNodeArr2, 0, simpleNodeArr.length);
                    simpleNode.children = simpleNodeArr2;
                }
                simpleNode.children[i2] = popNode;
                i = i2;
            }
        }

        public int getLength() {
            CircularArray circularArray = (CircularArray) this.segments;
            String str = (String) this.text;
            if (circularArray == null) {
                return str.length();
            }
            return (circularArray.head - circularArray.gapLength()) + (str.length() - (this.indent - this.quoteDepth));
        }

        public boolean isAfterLetterOrDigitOrEmoji(int i) {
            CharSequence charSequence = (CharSequence) this.text;
            int i2 = this.quoteDepth + 1;
            if (i > this.indent || i2 > i) {
                return false;
            }
            if (!Character.isLetterOrDigit(Character.codePointBefore(charSequence, i))) {
                int i3 = i - 1;
                if (!Character.isSurrogate(charSequence.charAt(i3))) {
                    if (!EmojiCompat.isConfigured()) {
                        return false;
                    }
                    EmojiCompat emojiCompat = EmojiCompat.get();
                    if (emojiCompat.getLoadState() != 1 || emojiCompat.getEmojiStart(i3, charSequence) == -1) {
                        return false;
                    }
                }
            }
            return true;
        }

        public boolean isAfterPunctuation(int i) {
            int i2 = this.quoteDepth + 1;
            if (i > this.indent || i2 > i) {
                return false;
            }
            return IntRectKt.isPunctuation$ui_text(Character.codePointBefore((CharSequence) this.text, i));
        }

        public boolean isBoundary(int i) {
            checkOffsetIsValid(i);
            if (!((BreakIterator) this.segments).isBoundary(i)) {
                return false;
            }
            if (isOnLetterOrDigitOrEmoji(i) && isOnLetterOrDigitOrEmoji(i - 1) && isOnLetterOrDigitOrEmoji(i + 1)) {
                return false;
            }
            return i <= 0 || i >= ((CharSequence) this.text).length() - 1 || !(isHiraganaKatakanaBoundary(i) || isHiraganaKatakanaBoundary(i + 1));
        }

        public boolean isHiraganaKatakanaBoundary(int i) {
            CharSequence charSequence = (CharSequence) this.text;
            int i2 = i - 1;
            Character.UnicodeBlock of = Character.UnicodeBlock.of(charSequence.charAt(i2));
            Character.UnicodeBlock unicodeBlock = Character.UnicodeBlock.HIRAGANA;
            if (Intrinsics.areEqual(of, unicodeBlock) && Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i)), Character.UnicodeBlock.KATAKANA)) {
                return true;
            }
            return Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i)), unicodeBlock) && Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i2)), Character.UnicodeBlock.KATAKANA);
        }

        public boolean isOnLetterOrDigitOrEmoji(int i) {
            CharSequence charSequence = (CharSequence) this.text;
            int i2 = this.quoteDepth;
            if (i >= this.indent || i2 > i) {
                return false;
            }
            if (!Character.isLetterOrDigit(Character.codePointAt(charSequence, i)) && !Character.isSurrogate(charSequence.charAt(i))) {
                if (!EmojiCompat.isConfigured()) {
                    return false;
                }
                EmojiCompat emojiCompat = EmojiCompat.get();
                if (emojiCompat.getLoadState() != 1 || emojiCompat.getEmojiStart(i, charSequence) == -1) {
                    return false;
                }
            }
            return true;
        }

        public boolean isOnPunctuation(int i) {
            int i2 = this.quoteDepth;
            if (i >= this.indent || i2 > i) {
                return false;
            }
            return IntRectKt.isPunctuation$ui_text(Character.codePointAt((CharSequence) this.text, i));
        }

        public int nextBoundary(int i) {
            checkOffsetIsValid(i);
            int following = ((BreakIterator) this.segments).following(i);
            return (isOnLetterOrDigitOrEmoji(following + (-1)) && isOnLetterOrDigitOrEmoji(following) && !isHiraganaKatakanaBoundary(following)) ? nextBoundary(following) : following;
        }

        public void openNodeScope(SimpleNode simpleNode) {
            ((ArrayList) this.text).add(Integer.valueOf(this.indent));
            this.indent = this.quoteDepth;
        }

        public SimpleNode popNode() {
            int i = this.quoteDepth - 1;
            this.quoteDepth = i;
            if (i < this.indent) {
                this.indent = ((Integer) Modifier.CC.m(1, (ArrayList) this.text)).intValue();
            }
            return (SimpleNode) Modifier.CC.m(1, (ArrayList) this.segments);
        }

        public int prevBoundary(int i) {
            checkOffsetIsValid(i);
            int preceding = ((BreakIterator) this.segments).preceding(i);
            return (isOnLetterOrDigitOrEmoji(preceding) && isAfterLetterOrDigitOrEmoji(preceding) && !isHiraganaKatakanaBoundary(preceding)) ? prevBoundary(preceding) : preceding;
        }

        public void replace(int i, String str, int i2) {
            if (i > i2) {
                InlineClassHelperKt.throwIllegalArgumentException("start index must be less than or equal to end index: " + i + " > " + i2);
            }
            if (i < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("start must be non-negative, but was " + i);
            }
            CircularArray circularArray = (CircularArray) this.segments;
            if (circularArray == null) {
                int max = Math.max(255, str.length() + 128);
                char[] cArr = new char[max];
                int min = Math.min(i, 64);
                int min2 = Math.min(((String) this.text).length() - i2, 64);
                String str2 = (String) this.text;
                int i3 = i - min;
                str2.getClass();
                str2.getChars(i3, i, cArr, 0);
                String str3 = (String) this.text;
                int i4 = max - min2;
                int i5 = min2 + i2;
                str3.getClass();
                str3.getChars(i2, i5, cArr, i4);
                str.getChars(0, str.length(), cArr, min);
                int length = str.length() + min;
                CircularArray circularArray2 = new CircularArray(3);
                circularArray2.head = max;
                circularArray2.elements = cArr;
                circularArray2.tail = length;
                circularArray2.capacityBitmask = i4;
                this.segments = circularArray2;
                this.quoteDepth = i3;
                this.indent = i5;
                return;
            }
            int i6 = this.quoteDepth;
            int i7 = i - i6;
            int i8 = i2 - i6;
            if (i7 < 0 || i8 > circularArray.head - circularArray.gapLength()) {
                this.text = toString();
                this.segments = null;
                this.quoteDepth = -1;
                this.indent = -1;
                replace(i, str, i2);
                return;
            }
            int length2 = str.length() - (i8 - i7);
            if (length2 > circularArray.gapLength()) {
                int gapLength = length2 - circularArray.gapLength();
                int i9 = circularArray.head;
                do {
                    i9 *= 2;
                } while (i9 - circularArray.head < gapLength);
                char[] cArr2 = new char[i9];
                System.arraycopy((char[]) circularArray.elements, 0, cArr2, 0, circularArray.tail);
                int i10 = circularArray.head;
                int i11 = circularArray.capacityBitmask;
                int i12 = i10 - i11;
                int i13 = i9 - i12;
                System.arraycopy((char[]) circularArray.elements, i11, cArr2, i13, (i12 + i11) - i11);
                circularArray.elements = cArr2;
                circularArray.head = i9;
                circularArray.capacityBitmask = i13;
            }
            int i14 = circularArray.tail;
            if (i7 < i14 && i8 <= i14) {
                int i15 = i14 - i8;
                char[] cArr3 = (char[]) circularArray.elements;
                System.arraycopy(cArr3, i8, cArr3, circularArray.capacityBitmask - i15, i15);
                circularArray.tail = i7;
                circularArray.capacityBitmask -= i15;
            } else if (i7 >= i14 || i8 < i14) {
                int gapLength2 = circularArray.gapLength() + i7;
                int gapLength3 = circularArray.gapLength() + i8;
                int i16 = circularArray.capacityBitmask;
                int i17 = gapLength2 - i16;
                char[] cArr4 = (char[]) circularArray.elements;
                System.arraycopy(cArr4, i16, cArr4, circularArray.tail, i17);
                circularArray.tail += i17;
                circularArray.capacityBitmask = gapLength3;
            } else {
                circularArray.capacityBitmask = circularArray.gapLength() + i8;
                circularArray.tail = i7;
            }
            str.getChars(0, str.length(), (char[]) circularArray.elements, circularArray.tail);
            circularArray.tail = str.length() + circularArray.tail;
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 2:
                    CircularArray circularArray = (CircularArray) this.segments;
                    String str = (String) this.text;
                    if (circularArray == null) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append((CharSequence) str, 0, this.quoteDepth);
                    sb.append((char[]) circularArray.elements, 0, circularArray.tail);
                    char[] cArr = (char[]) circularArray.elements;
                    int i = circularArray.capacityBitmask;
                    sb.append(cArr, i, circularArray.head - i);
                    String str2 = (String) this.text;
                    sb.append((CharSequence) str2, this.indent, str2.length());
                    return sb.toString();
                default:
                    return super.toString();
            }
        }

        public /* synthetic */ Builder(int i) {
            this.$r8$classId = i;
        }

        public Builder(String str, int i) {
            this.$r8$classId = 0;
            this.text = str;
            this.quoteDepth = i;
            this.segments = new ArrayList();
            this.indent = Integer.MAX_VALUE;
        }

        public Builder(EndCompoundLayout endCompoundLayout, MenuHostHelper menuHostHelper) {
            this.$r8$classId = 3;
            this.text = new SparseArray();
            this.segments = endCompoundLayout;
            TypedArray typedArray = (TypedArray) menuHostHelper.mMenuProviders;
            this.quoteDepth = typedArray.getResourceId(28, 0);
            this.indent = typedArray.getResourceId(53, 0);
        }
    }
}
