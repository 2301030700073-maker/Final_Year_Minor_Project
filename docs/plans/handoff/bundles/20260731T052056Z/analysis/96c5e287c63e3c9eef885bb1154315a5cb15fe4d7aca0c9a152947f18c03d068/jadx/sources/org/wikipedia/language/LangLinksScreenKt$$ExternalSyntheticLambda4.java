package org.wikipedia.language;

import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt__StringsJVMKt;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LangLinksScreenKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ LangLinksScreenKt$$ExternalSyntheticLambda4(Function1 function1, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        final int i2 = 1;
        Unit unit = Unit.INSTANCE;
        final MutableState mutableState = this.f$1;
        final Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                mutableState.setValue(str);
                function1.invoke(str);
                break;
            case 1:
                String str2 = (String) obj;
                str2.getClass();
                function1.invoke(str2);
                mutableState.setValue(str2);
                break;
            case 2:
                String str3 = (String) obj;
                str3.getClass();
                Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(str3);
                if (str3.length() != 0) {
                    if (intOrNull != null && intOrNull.intValue() < 1) {
                        mutableState.setValue(String.valueOf(1));
                        function1.invoke(1);
                        break;
                    } else if (intOrNull != null && intOrNull.intValue() > 20) {
                        mutableState.setValue(String.valueOf(20));
                        function1.invoke(20);
                        break;
                    } else if (intOrNull != null) {
                        mutableState.setValue(str3);
                        function1.invoke(intOrNull);
                        break;
                    }
                } else {
                    mutableState.setValue(str3);
                    function1.invoke(1);
                    break;
                }
                break;
            default:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                final int i3 = 0;
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        int i4 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                        MutableState mutableState2 = mutableState;
                        Function1 function12 = function1;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                        GapComposer gapComposer = (GapComposer) obj3;
                        switch (i4) {
                            case 0:
                                int intValue = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z = ((Option) mutableState2.getValue()) == Option.ENTRY;
                                    boolean changed = gapComposer.changed(function12);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 9);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Entry", (Function0) rememberedValue, null, z, gapComposer, 6);
                                    break;
                                }
                            case 1:
                                int intValue2 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z2 = ((Option) mutableState2.getValue()) == Option.FILTER;
                                    boolean changed2 = gapComposer.changed(function12);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 10);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Filter", (Function0) rememberedValue2, null, z2, gapComposer, 6);
                                    break;
                                }
                            default:
                                int intValue3 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z3 = ((Option) mutableState2.getValue()) == Option.DELETE;
                                    boolean changed3 = gapComposer.changed(function12);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 8);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Delete", (Function0) rememberedValue3, null, z3, gapComposer, 6);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, 1828949661), 3);
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        int i4 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                        MutableState mutableState2 = mutableState;
                        Function1 function12 = function1;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                        GapComposer gapComposer = (GapComposer) obj3;
                        switch (i4) {
                            case 0:
                                int intValue = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z = ((Option) mutableState2.getValue()) == Option.ENTRY;
                                    boolean changed = gapComposer.changed(function12);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 9);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Entry", (Function0) rememberedValue, null, z, gapComposer, 6);
                                    break;
                                }
                            case 1:
                                int intValue2 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z2 = ((Option) mutableState2.getValue()) == Option.FILTER;
                                    boolean changed2 = gapComposer.changed(function12);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 10);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Filter", (Function0) rememberedValue2, null, z2, gapComposer, 6);
                                    break;
                                }
                            default:
                                int intValue3 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z3 = ((Option) mutableState2.getValue()) == Option.DELETE;
                                    boolean changed3 = gapComposer.changed(function12);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 8);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Delete", (Function0) rememberedValue3, null, z3, gapComposer, 6);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, -547892844), 3);
                final int i4 = 2;
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        int i42 = i4;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                        MutableState mutableState2 = mutableState;
                        Function1 function12 = function1;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                        GapComposer gapComposer = (GapComposer) obj3;
                        switch (i42) {
                            case 0:
                                int intValue = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z = ((Option) mutableState2.getValue()) == Option.ENTRY;
                                    boolean changed = gapComposer.changed(function12);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 9);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Entry", (Function0) rememberedValue, null, z, gapComposer, 6);
                                    break;
                                }
                            case 1:
                                int intValue2 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z2 = ((Option) mutableState2.getValue()) == Option.FILTER;
                                    boolean changed2 = gapComposer.changed(function12);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 10);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Filter", (Function0) rememberedValue2, null, z2, gapComposer, 6);
                                    break;
                                }
                            default:
                                int intValue3 = ((Integer) obj4).intValue();
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean z3 = ((Option) mutableState2.getValue()) == Option.DELETE;
                                    boolean changed3 = gapComposer.changed(function12);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SearchResultsScreenKt$$ExternalSyntheticLambda0(function12, mutableState2, 8);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    ReadingChallengePlaygroundDialogKt.ChipButton("Delete", (Function0) rememberedValue3, null, z3, gapComposer, 6);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, 421709781), 3);
                break;
        }
        return unit;
    }
}
