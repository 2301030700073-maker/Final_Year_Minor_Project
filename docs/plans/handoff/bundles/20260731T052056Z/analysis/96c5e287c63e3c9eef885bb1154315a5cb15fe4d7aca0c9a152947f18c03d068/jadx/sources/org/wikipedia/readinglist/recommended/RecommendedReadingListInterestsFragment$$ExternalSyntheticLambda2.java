package org.wikipedia.readinglist.recommended;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.fragment.app.FragmentManager$PopBackStackState;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RecommendedReadingListInterestsFragment f$0;

    public /* synthetic */ RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2(RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = recommendedReadingListInterestsFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = this.f$0;
        Object[] objArr = 0;
        final int i2 = 2;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-1411497278, new RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2(recommendedReadingListInterestsFragment, i3), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Resource resource = (Resource) Updater.collectAsState(recommendedReadingListInterestsFragment.getViewModel().uiState, gapComposer2).getValue();
                    boolean z = recommendedReadingListInterestsFragment.getViewModel().fromSettings;
                    boolean changedInstance = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment2 = recommendedReadingListInterestsFragment;
                                switch (i4) {
                                    case 0:
                                        RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RecommendedReadingListInterestsViewModel$loadItems$2(viewModel, null), 2);
                                        break;
                                    case 1:
                                        int i5 = SearchActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.searchLauncher.launch(LoginClient.newIntent$default(recommendedReadingListInterestsFragment2.requireActivity(), Constants.InvokeSource.READING_LIST_ACTIVITY, (String) null, (String) null, 48), null);
                                        break;
                                    case 2:
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                    case 3:
                                        if (!recommendedReadingListInterestsFragment2.getViewModel().fromSettings) {
                                            FragmentManagerImpl supportFragmentManager = recommendedReadingListInterestsFragment2.requireActivity().getSupportFragmentManager();
                                            supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                                            break;
                                        } else {
                                            recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                            recommendedReadingListInterestsFragment2.requireActivity().setResult(-1);
                                            recommendedReadingListInterestsFragment2.requireActivity().finish();
                                            break;
                                        }
                                    default:
                                        recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                                        int i6 = ReadingListActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.startActivity(NodeUtils.newIntent(recommendedReadingListInterestsFragment2.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment2 = recommendedReadingListInterestsFragment;
                                switch (i4) {
                                    case 0:
                                        RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RecommendedReadingListInterestsViewModel$loadItems$2(viewModel, null), 2);
                                        break;
                                    case 1:
                                        int i5 = SearchActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.searchLauncher.launch(LoginClient.newIntent$default(recommendedReadingListInterestsFragment2.requireActivity(), Constants.InvokeSource.READING_LIST_ACTIVITY, (String) null, (String) null, 48), null);
                                        break;
                                    case 2:
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                    case 3:
                                        if (!recommendedReadingListInterestsFragment2.getViewModel().fromSettings) {
                                            FragmentManagerImpl supportFragmentManager = recommendedReadingListInterestsFragment2.requireActivity().getSupportFragmentManager();
                                            supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                                            break;
                                        } else {
                                            recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                            recommendedReadingListInterestsFragment2.requireActivity().setResult(-1);
                                            recommendedReadingListInterestsFragment2.requireActivity().finish();
                                            break;
                                        }
                                    default:
                                        recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                                        int i6 = ReadingListActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.startActivity(NodeUtils.newIntent(recommendedReadingListInterestsFragment2.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    WikiErrorClickEvents wikiErrorClickEvents = new WikiErrorClickEvents(function0, (Function0) rememberedValue2, null, 12);
                    boolean changedInstance3 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1(recommendedReadingListInterestsFragment, i2);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function1 = (Function1) rememberedValue3;
                    boolean changedInstance4 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                        final int i4 = 3;
                        rememberedValue4 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i42 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment2 = recommendedReadingListInterestsFragment;
                                switch (i42) {
                                    case 0:
                                        RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RecommendedReadingListInterestsViewModel$loadItems$2(viewModel, null), 2);
                                        break;
                                    case 1:
                                        int i5 = SearchActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.searchLauncher.launch(LoginClient.newIntent$default(recommendedReadingListInterestsFragment2.requireActivity(), Constants.InvokeSource.READING_LIST_ACTIVITY, (String) null, (String) null, 48), null);
                                        break;
                                    case 2:
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                    case 3:
                                        if (!recommendedReadingListInterestsFragment2.getViewModel().fromSettings) {
                                            FragmentManagerImpl supportFragmentManager = recommendedReadingListInterestsFragment2.requireActivity().getSupportFragmentManager();
                                            supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                                            break;
                                        } else {
                                            recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                            recommendedReadingListInterestsFragment2.requireActivity().setResult(-1);
                                            recommendedReadingListInterestsFragment2.requireActivity().finish();
                                            break;
                                        }
                                    default:
                                        recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                                        int i6 = ReadingListActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.startActivity(NodeUtils.newIntent(recommendedReadingListInterestsFragment2.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function02 = (Function0) rememberedValue4;
                    boolean changedInstance5 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                        final int i5 = 4;
                        rememberedValue5 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i42 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment2 = recommendedReadingListInterestsFragment;
                                switch (i42) {
                                    case 0:
                                        RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RecommendedReadingListInterestsViewModel$loadItems$2(viewModel, null), 2);
                                        break;
                                    case 1:
                                        int i52 = SearchActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.searchLauncher.launch(LoginClient.newIntent$default(recommendedReadingListInterestsFragment2.requireActivity(), Constants.InvokeSource.READING_LIST_ACTIVITY, (String) null, (String) null, 48), null);
                                        break;
                                    case 2:
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                    case 3:
                                        if (!recommendedReadingListInterestsFragment2.getViewModel().fromSettings) {
                                            FragmentManagerImpl supportFragmentManager = recommendedReadingListInterestsFragment2.requireActivity().getSupportFragmentManager();
                                            supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                                            break;
                                        } else {
                                            recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                            recommendedReadingListInterestsFragment2.requireActivity().setResult(-1);
                                            recommendedReadingListInterestsFragment2.requireActivity().finish();
                                            break;
                                        }
                                    default:
                                        recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                                        int i6 = ReadingListActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.startActivity(NodeUtils.newIntent(recommendedReadingListInterestsFragment2.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changedInstance6 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance6 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1(recommendedReadingListInterestsFragment, i3);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Function1 function12 = (Function1) rememberedValue6;
                    boolean changedInstance7 = gapComposer2.changedInstance(recommendedReadingListInterestsFragment);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance7 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i42 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment2 = recommendedReadingListInterestsFragment;
                                switch (i42) {
                                    case 0:
                                        RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment2.getViewModel();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new RecommendedReadingListInterestsViewModel$loadItems$2(viewModel, null), 2);
                                        break;
                                    case 1:
                                        int i52 = SearchActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.searchLauncher.launch(LoginClient.newIntent$default(recommendedReadingListInterestsFragment2.requireActivity(), Constants.InvokeSource.READING_LIST_ACTIVITY, (String) null, (String) null, 48), null);
                                        break;
                                    case 2:
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                    case 3:
                                        if (!recommendedReadingListInterestsFragment2.getViewModel().fromSettings) {
                                            FragmentManagerImpl supportFragmentManager = recommendedReadingListInterestsFragment2.requireActivity().getSupportFragmentManager();
                                            supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                                            break;
                                        } else {
                                            recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                            recommendedReadingListInterestsFragment2.requireActivity().setResult(-1);
                                            recommendedReadingListInterestsFragment2.requireActivity().finish();
                                            break;
                                        }
                                    default:
                                        recommendedReadingListInterestsFragment2.getViewModel().commitSelection();
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                                        int i6 = ReadingListActivity.$r8$clinit;
                                        recommendedReadingListInterestsFragment2.startActivity(NodeUtils.newIntent(recommendedReadingListInterestsFragment2.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                                        recommendedReadingListInterestsFragment2.requireActivity().finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    }
                    RecommendedReadingListSourceScreenKt.RecommendedReadingListInterestsScreen(resource, z, wikiErrorClickEvents, function1, function02, function03, function12, (Function0) rememberedValue7, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
