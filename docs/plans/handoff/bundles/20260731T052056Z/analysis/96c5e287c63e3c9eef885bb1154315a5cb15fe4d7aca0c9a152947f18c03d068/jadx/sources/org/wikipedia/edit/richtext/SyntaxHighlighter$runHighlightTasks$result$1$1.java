package org.wikipedia.edit.richtext;

import androidx.recyclerview.widget.DiffUtil;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SyntaxHighlighter$runHighlightTasks$result$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $firstVisibleIndex;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ String $textToHighlight;
    public final /* synthetic */ SyntaxHighlighter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyntaxHighlighter$runHighlightTasks$result$1$1(SyntaxHighlighter syntaxHighlighter, int i, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = syntaxHighlighter;
        this.$firstVisibleIndex = i;
        this.$textToHighlight = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        String str = this.$textToHighlight;
        int i2 = this.$firstVisibleIndex;
        SyntaxHighlighter syntaxHighlighter = this.this$0;
        switch (i) {
            case 0:
                return new SyntaxHighlighter$runHighlightTasks$result$1$1(syntaxHighlighter, str, i2, continuation);
            default:
                return new SyntaxHighlighter$runHighlightTasks$result$1$1(syntaxHighlighter, i2, str, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SyntaxHighlighter$runHighlightTasks$result$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object obj2;
        int i = this.$r8$classId;
        int i2 = 0;
        String str = this.$textToHighlight;
        int i3 = this.$firstVisibleIndex;
        SyntaxHighlighter syntaxHighlighter = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                List list = syntaxHighlighter.syntaxRules;
                Stack stack = new Stack();
                ArrayList arrayList = new ArrayList();
                char[] charArray = str.toString().toCharArray();
                charArray.getClass();
                int i4 = 0;
                while (i4 < charArray.length) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            SyntaxRule syntaxRule = (SyntaxRule) it.next();
                            char[] cArr = syntaxRule.endChars;
                            if (cArr.length + i4 <= charArray.length) {
                                int length = cArr.length;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= length) {
                                        Iterator it2 = stack.iterator();
                                        while (true) {
                                            if (it2.hasNext()) {
                                                obj2 = it2.next();
                                                if (Intrinsics.areEqual(((SpanExtents) obj2).getSyntaxRule(), syntaxRule)) {
                                                }
                                            } else {
                                                obj2 = null;
                                            }
                                        }
                                        SpanExtents spanExtents = (SpanExtents) obj2;
                                        if (spanExtents != null) {
                                            stack.remove(spanExtents);
                                            spanExtents.setEnd(cArr.length + i4);
                                            arrayList.add(spanExtents);
                                            i4 += cArr.length - 1;
                                            z = true;
                                        }
                                    } else if (charArray[i4 + i5] != cArr[i5]) {
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                    if (!z) {
                        Iterator it3 = list.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                SyntaxRule syntaxRule2 = (SyntaxRule) it3.next();
                                char[] cArr2 = syntaxRule2.startChars;
                                if (cArr2.length + i4 <= charArray.length) {
                                    int length2 = cArr2.length;
                                    for (int i6 = 0; i6 < length2; i6++) {
                                        if (charArray[i4 + i6] != cArr2[i6]) {
                                            break;
                                        }
                                    }
                                    stack.push(syntaxRule2.spanStyle.createSpan(syntaxHighlighter.activity, i4, syntaxRule2));
                                    i4 += cArr2.length - 1;
                                }
                            }
                        }
                    }
                    i4++;
                }
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    SpanExtents spanExtents2 = (SpanExtents) it4.next();
                    spanExtents2.setStart(spanExtents2.getStart() + i3);
                    spanExtents2.setEnd(spanExtents2.getEnd() + i3);
                }
                if (arrayList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new DiffUtil.AnonymousClass1(22));
                }
                return arrayList;
            default:
                ResultKt.throwOnFailure(obj);
                int length3 = str.length();
                SyntaxRule syntaxRule3 = new SyntaxRule("", "", SyntaxRuleStyle.SEARCH_MATCHES);
                Collection collection = syntaxHighlighter.searchQueryPositions;
                if (collection == null) {
                    collection = EmptyList.INSTANCE;
                }
                ArrayList arrayList2 = new ArrayList(collection);
                ArrayList arrayList3 = new ArrayList();
                Iterator it5 = arrayList2.iterator();
                while (it5.hasNext()) {
                    Object next = it5.next();
                    int intValue = ((Number) next).intValue();
                    if (intValue >= i3 && intValue < i3 + length3) {
                        arrayList3.add(next);
                    }
                }
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it6 = arrayList3.iterator();
                while (it6.hasNext()) {
                    Object next2 = it6.next();
                    int i7 = i2 + 1;
                    if (i2 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    int intValue2 = ((Number) next2).intValue();
                    SpanExtents createSpan = (i2 == syntaxHighlighter.searchQueryPositionIndex ? SyntaxRuleStyle.SEARCH_MATCH_SELECTED : SyntaxRuleStyle.SEARCH_MATCHES).createSpan(syntaxHighlighter.activity, intValue2, syntaxRule3);
                    createSpan.setStart(intValue2);
                    createSpan.setEnd(intValue2 + syntaxHighlighter.searchQueryLength);
                    arrayList4.add(createSpan);
                    i2 = i7;
                }
                return arrayList4;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyntaxHighlighter$runHighlightTasks$result$1$1(SyntaxHighlighter syntaxHighlighter, String str, int i, Continuation continuation) {
        super(2, continuation);
        this.this$0 = syntaxHighlighter;
        this.$textToHighlight = str;
        this.$firstVisibleIndex = i;
    }
}
