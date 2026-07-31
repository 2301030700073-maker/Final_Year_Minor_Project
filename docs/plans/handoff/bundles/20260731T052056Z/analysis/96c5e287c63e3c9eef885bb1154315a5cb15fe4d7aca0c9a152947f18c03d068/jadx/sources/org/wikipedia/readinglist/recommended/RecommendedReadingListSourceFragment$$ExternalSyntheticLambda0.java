package org.wikipedia.readinglist.recommended;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.random.RandomViewModel$loadMore$2;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RecommendedReadingListSourceFragment f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0(RecommendedReadingListSourceFragment recommendedReadingListSourceFragment, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = recommendedReadingListSourceFragment;
        this.f$1 = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$1;
        final RecommendedReadingListSourceFragment recommendedReadingListSourceFragment = this.f$0;
        Object[] objArr = 0;
        final int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(756546046, new RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0(recommendedReadingListSourceFragment, str, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Resource resource = (Resource) Updater.collectAsState(recommendedReadingListSourceFragment.getViewModel().uiSourceState, gapComposer2).getValue();
                    boolean z = recommendedReadingListSourceFragment.getViewModel().fromSettings;
                    boolean changedInstance = gapComposer2.changedInstance(recommendedReadingListSourceFragment);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i3 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListSourceFragment recommendedReadingListSourceFragment2 = recommendedReadingListSourceFragment;
                                switch (i3) {
                                    case 0:
                                        RecommendedReadingListSourceViewModel viewModel = recommendedReadingListSourceFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RandomViewModel$loadMore$2(viewModel, (Continuation) null, 5), 2);
                                        break;
                                    default:
                                        recommendedReadingListSourceFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(recommendedReadingListSourceFragment);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i3 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListSourceFragment recommendedReadingListSourceFragment2 = recommendedReadingListSourceFragment;
                                switch (i3) {
                                    case 0:
                                        RecommendedReadingListSourceViewModel viewModel = recommendedReadingListSourceFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RandomViewModel$loadMore$2(viewModel, (Continuation) null, 5), 2);
                                        break;
                                    default:
                                        recommendedReadingListSourceFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    WikiErrorClickEvents wikiErrorClickEvents = new WikiErrorClickEvents(function0, (Function0) rememberedValue2, null, 12);
                    boolean changed = gapComposer2.changed(str) | gapComposer2.changedInstance(recommendedReadingListSourceFragment);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4(str, recommendedReadingListSourceFragment);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    boolean changedInstance3 = gapComposer2.changedInstance(recommendedReadingListSourceFragment) | gapComposer2.changed(str);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4(recommendedReadingListSourceFragment, str);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function03 = (Function0) rememberedValue4;
                    boolean changed2 = gapComposer2.changed(str) | gapComposer2.changedInstance(recommendedReadingListSourceFragment);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new SingleLiveData$$ExternalSyntheticLambda0(3, str, recommendedReadingListSourceFragment);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    RecommendedReadingListSourceScreenKt.SourceSelectionScreen(resource, z, wikiErrorClickEvents, function02, function03, (Function1) rememberedValue5, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
