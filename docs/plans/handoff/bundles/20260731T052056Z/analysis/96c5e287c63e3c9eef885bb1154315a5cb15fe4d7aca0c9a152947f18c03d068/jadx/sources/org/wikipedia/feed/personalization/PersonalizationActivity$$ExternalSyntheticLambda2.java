package org.wikipedia.feed.personalization;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.Constants;
import org.wikipedia.login.LoginClient;
import org.wikipedia.search.SearchActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PersonalizationActivity$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PersonalizationActivity f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ List f$2;

    public /* synthetic */ PersonalizationActivity$$ExternalSyntheticLambda2(PersonalizationActivity personalizationActivity, boolean z, List list, int i) {
        this.$r8$classId = i;
        this.f$0 = personalizationActivity;
        this.f$1 = z;
        this.f$2 = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = null;
        boolean z = this.f$1;
        final PersonalizationActivity personalizationActivity = this.f$0;
        final int i2 = 2;
        boolean z2 = false;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i4 = PersonalizationActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1564865793, new PersonalizationActivity$$ExternalSyntheticLambda2(personalizationActivity, z, this.f$2, i3), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i5 = PersonalizationActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    PersonalizationViewModel personalizationViewModel = (PersonalizationViewModel) personalizationActivity.viewModel$delegate.getValue();
                    Object obj3 = Composer$Companion.Empty;
                    if (z) {
                        gapComposer2.startReplaceGroup(1342698119);
                        boolean changedInstance = gapComposer2.changedInstance(personalizationActivity);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        Object obj4 = rememberedValue;
                        if (changedInstance || rememberedValue == obj3) {
                            final boolean z3 = z2 ? 1 : 0;
                            Object obj5 = new Function0() { // from class: org.wikipedia.feed.personalization.PersonalizationActivity$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i6 = z3;
                                    Unit unit2 = Unit.INSTANCE;
                                    PersonalizationActivity personalizationActivity2 = personalizationActivity;
                                    switch (i6) {
                                        case 0:
                                            int i7 = PersonalizationActivity.$r8$clinit;
                                            personalizationActivity2.setResult(((PersonalizationViewModel) personalizationActivity2.viewModel$delegate.getValue()).interestsUpdated ? 100 : -1);
                                            personalizationActivity2.finish();
                                            break;
                                        case 1:
                                            int i8 = PersonalizationActivity.$r8$clinit;
                                            personalizationActivity2.finish();
                                            break;
                                        default:
                                            int i9 = PersonalizationActivity.$r8$clinit;
                                            int i10 = SearchActivity.$r8$clinit;
                                            personalizationActivity2.searchLauncher.launch(LoginClient.newIntent$default(personalizationActivity2, Constants.InvokeSource.FEED_INTEREST_SELECTION, (String) null, (String) null, 48), null);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(obj5);
                            obj4 = obj5;
                        }
                        function0 = (Function0) obj4;
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(1342760924);
                        gapComposer2.end(false);
                    }
                    Function0 function02 = function0;
                    boolean changedInstance2 = gapComposer2.changedInstance(personalizationActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    Object obj6 = rememberedValue2;
                    if (changedInstance2 || rememberedValue2 == obj3) {
                        Object obj7 = new Function0() { // from class: org.wikipedia.feed.personalization.PersonalizationActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                PersonalizationActivity personalizationActivity2 = personalizationActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = PersonalizationActivity.$r8$clinit;
                                        personalizationActivity2.setResult(((PersonalizationViewModel) personalizationActivity2.viewModel$delegate.getValue()).interestsUpdated ? 100 : -1);
                                        personalizationActivity2.finish();
                                        break;
                                    case 1:
                                        int i8 = PersonalizationActivity.$r8$clinit;
                                        personalizationActivity2.finish();
                                        break;
                                    default:
                                        int i9 = PersonalizationActivity.$r8$clinit;
                                        int i10 = SearchActivity.$r8$clinit;
                                        personalizationActivity2.searchLauncher.launch(LoginClient.newIntent$default(personalizationActivity2, Constants.InvokeSource.FEED_INTEREST_SELECTION, (String) null, (String) null, 48), null);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(obj7);
                        obj6 = obj7;
                    }
                    Function0 function03 = (Function0) obj6;
                    boolean changed = gapComposer2.changed(z) | gapComposer2.changedInstance(personalizationActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    Object obj8 = rememberedValue3;
                    if (changed || rememberedValue3 == obj3) {
                        Object connectionPoolImpl$$ExternalSyntheticLambda2 = new ConnectionPoolImpl$$ExternalSyntheticLambda2(z, personalizationActivity, 5);
                        gapComposer2.updateRememberedValue(connectionPoolImpl$$ExternalSyntheticLambda2);
                        obj8 = connectionPoolImpl$$ExternalSyntheticLambda2;
                    }
                    Function0 function04 = (Function0) obj8;
                    boolean changedInstance3 = gapComposer2.changedInstance(personalizationActivity);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    Object obj9 = rememberedValue4;
                    if (changedInstance3 || rememberedValue4 == obj3) {
                        Object obj10 = new Function0() { // from class: org.wikipedia.feed.personalization.PersonalizationActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                PersonalizationActivity personalizationActivity2 = personalizationActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = PersonalizationActivity.$r8$clinit;
                                        personalizationActivity2.setResult(((PersonalizationViewModel) personalizationActivity2.viewModel$delegate.getValue()).interestsUpdated ? 100 : -1);
                                        personalizationActivity2.finish();
                                        break;
                                    case 1:
                                        int i8 = PersonalizationActivity.$r8$clinit;
                                        personalizationActivity2.finish();
                                        break;
                                    default:
                                        int i9 = PersonalizationActivity.$r8$clinit;
                                        int i10 = SearchActivity.$r8$clinit;
                                        personalizationActivity2.searchLauncher.launch(LoginClient.newIntent$default(personalizationActivity2, Constants.InvokeSource.FEED_INTEREST_SELECTION, (String) null, (String) null, 48), null);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(obj10);
                        obj9 = obj10;
                    }
                    PersonalizationScreenKt.PersonalizationScreen(null, personalizationViewModel, this.f$2, function03, function04, (Function0) obj9, function02, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
