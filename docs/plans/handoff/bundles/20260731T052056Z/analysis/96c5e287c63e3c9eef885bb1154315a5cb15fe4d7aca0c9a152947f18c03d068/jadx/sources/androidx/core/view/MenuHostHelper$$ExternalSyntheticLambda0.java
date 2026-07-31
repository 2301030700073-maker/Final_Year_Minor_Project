package androidx.core.view;

import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt$WhenMappings;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import com.caverock.androidsvg.SVG;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.DonationReminderUiState;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuHostHelper$$ExternalSyntheticLambda0 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ MenuHostHelper$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                SVG svg = (SVG) obj3;
                Lifecycle$State lifecycle$State = (Lifecycle$State) obj2;
                MenuProvider menuProvider = (MenuProvider) obj;
                svg.getClass();
                Runnable runnable = (Runnable) svg.rootElement;
                CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) svg.cssRules;
                Lifecycle$Event.Companion.getClass();
                if (lifecycle$Event != Lifecycle$Event.Companion.upTo(lifecycle$State)) {
                    if (lifecycle$Event != Lifecycle$Event.ON_DESTROY) {
                        if (lifecycle$Event == Lifecycle$Event.Companion.downFrom(lifecycle$State)) {
                            copyOnWriteArrayList.remove(menuProvider);
                            runnable.run();
                            break;
                        }
                    } else {
                        svg.removeMenuProvider(menuProvider);
                        break;
                    }
                } else {
                    copyOnWriteArrayList.add(menuProvider);
                    runnable.run();
                    break;
                }
                break;
            case 1:
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj3;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                Function1 function1 = (Function1) obj;
                int i2 = LifecycleEffectKt$WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()];
                if (i2 == 1) {
                    ref$ObjectRef.element = function1.invoke(lifecycleStartStopEffectScope);
                    break;
                } else if (i2 == 2) {
                    BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 = (BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1) ref$ObjectRef.element;
                    if (backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 != null) {
                        backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1.runStopOrDisposeEffect();
                    }
                    ref$ObjectRef.element = null;
                    break;
                }
                break;
            default:
                DonationReminderViewModel donationReminderViewModel = (DonationReminderViewModel) obj3;
                Function1 function12 = (Function1) obj2;
                MutableState mutableState = (MutableState) obj;
                int i3 = DonationReminderScreenKt.WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()];
                if (i3 == 1) {
                    if (donationReminderViewModel.isFromSettings && !((Boolean) mutableState.getValue()).booleanValue()) {
                        DonationReminderUiState donationReminderUiState = (DonationReminderUiState) donationReminderViewModel._uiState.getValue();
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.getDonationReminderConfig().userEnabled) {
                            if (donationReminderUiState.donationAmount.selectedValue.floatValue() != Prefs.getDonationReminderConfig().donateAmount || donationReminderUiState.readFrequency.selectedValue.intValue() != Prefs.getDonationReminderConfig().articleFrequency) {
                                donationReminderViewModel.saveReminder();
                                int i4 = DonationReminderHelper.validReadCountOnSeconds;
                                function12.invoke(DonationReminderHelper.thankYouMessageForSettings());
                                break;
                            }
                        }
                    }
                } else if (i3 == 2) {
                    mutableState.setValue(Boolean.FALSE);
                    break;
                }
                break;
        }
    }
}
