package org.wikipedia.language.addlanguages;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import okhttp3.Cookie;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AddLanguagesListActivity$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AddLanguagesListActivity f$0;

    public /* synthetic */ AddLanguagesListActivity$$ExternalSyntheticLambda1(AddLanguagesListActivity addLanguagesListActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = addLanguagesListActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final AddLanguagesListActivity addLanguagesListActivity = this.f$0;
        Object[] objArr = 0;
        final int i2 = 2;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i4 = AddLanguagesListActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-215810273, new AddLanguagesListActivity$$ExternalSyntheticLambda1(addLanguagesListActivity, i3), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i5 = AddLanguagesListActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    UiState uiState = (UiState) Updater.collectAsState(((AddLanguagesViewModel) addLanguagesListActivity.viewModel$delegate.getValue()).uiState, gapComposer2).getValue();
                    Modifier imePadding = OffsetKt.imePadding(OffsetKt.safeDrawingPadding(SizeKt.FillWholeMaxSize));
                    boolean changedInstance = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                AddLanguagesListActivity addLanguagesListActivity2 = addLanguagesListActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 1:
                                        int i8 = AddLanguagesListActivity.$r8$clinit;
                                        ((AddLanguagesViewModel) addLanguagesListActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    default:
                                        int i9 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new AddLanguagesListActivity$$ExternalSyntheticLambda0(addLanguagesListActivity, 1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function1 = (Function1) rememberedValue2;
                    boolean changedInstance3 = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AddLanguagesListActivity$$ExternalSyntheticLambda0(addLanguagesListActivity, 2);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function12 = (Function1) rememberedValue3;
                    boolean changedInstance4 = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new AddLanguagesListActivity$$ExternalSyntheticLambda0(addLanguagesListActivity, 3);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function13 = (Function1) rememberedValue4;
                    boolean changedInstance5 = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new Function0() { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                AddLanguagesListActivity addLanguagesListActivity2 = addLanguagesListActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 1:
                                        int i8 = AddLanguagesListActivity.$r8$clinit;
                                        ((AddLanguagesViewModel) addLanguagesListActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    default:
                                        int i9 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function02 = (Function0) rememberedValue5;
                    boolean changedInstance6 = gapComposer2.changedInstance(addLanguagesListActivity);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance6 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new Function0() { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                AddLanguagesListActivity addLanguagesListActivity2 = addLanguagesListActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    case 1:
                                        int i8 = AddLanguagesListActivity.$r8$clinit;
                                        ((AddLanguagesViewModel) addLanguagesListActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    default:
                                        int i9 = AddLanguagesListActivity.$r8$clinit;
                                        addLanguagesListActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Cookie.Companion.LanguagesListScreen(imePadding, uiState, function0, function1, function12, function13, new WikiErrorClickEvents(function02, (Function0) rememberedValue6, null, 12), gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
