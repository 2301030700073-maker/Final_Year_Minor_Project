package app.k9mail.feature.onboarding.permissions.ui;

import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.onboarding.permissions.domain.usecase.CheckPermission;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$Effect;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PermissionsViewModel extends BaseViewModel {
    public final CoroutineDispatcher backgroundDispatcher;
    public final CheckPermission checkPermission;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PermissionsViewModel(app.k9mail.feature.onboarding.permissions.domain.usecase.CheckPermission r8) {
        /*
            r7 = this;
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r0 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            r0.getClass()
            app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State r1 = new app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State
            r5 = 0
            r6 = 0
            r2 = 1
            app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState r3 = app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState.Unknown
            r4 = r3
            r1.<init>(r2, r3, r4, r5, r6)
            r7.<init>(r1)
            r7.checkPermission = r8
            r7.backgroundDispatcher = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel.<init>(app.k9mail.feature.onboarding.permissions.domain.usecase.CheckPermission):void");
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        PermissionsContract$State permissionsContract$State;
        Object value2;
        PermissionsContract$State permissionsContract$State2;
        PermissionsContract$Event permissionsContract$Event = (PermissionsContract$Event) obj;
        permissionsContract$Event.getClass();
        if (permissionsContract$Event.equals(PermissionsContract$Event.LoadPermissionState.INSTANCE)) {
            handleOneTimeEvent(permissionsContract$Event, new RoomDatabase$closeBarrier$1(0, this, PermissionsViewModel.class, "loadPermissionState", "loadPermissionState()V", 0, 15));
            return;
        }
        if (permissionsContract$Event.equals(PermissionsContract$Event.AllowContactsPermissionClicked.INSTANCE)) {
            emitEffect(PermissionsContract$Effect.RequestContactsPermission.INSTANCE);
            return;
        }
        if (permissionsContract$Event.equals(PermissionsContract$Event.AllowNotificationsPermissionClicked.INSTANCE)) {
            emitEffect(PermissionsContract$Effect.RequestNotificationsPermission.INSTANCE);
            return;
        }
        boolean z = permissionsContract$Event instanceof PermissionsContract$Event.ContactsPermissionResult;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState = PermissionsContract$UiPermissionState.Denied;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2 = PermissionsContract$UiPermissionState.Granted;
        StateFlowImpl stateFlowImpl = this._state;
        if (z) {
            boolean z2 = ((PermissionsContract$Event.ContactsPermissionResult) permissionsContract$Event).success;
            do {
                value2 = stateFlowImpl.getValue();
                permissionsContract$State2 = (PermissionsContract$State) value2;
                permissionsContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, PermissionsContract$State.copy$default(permissionsContract$State2, z2 ? permissionsContract$UiPermissionState2 : permissionsContract$UiPermissionState, null, false, false, 29)));
            updateNextButtonState();
            return;
        }
        if (!(permissionsContract$Event instanceof PermissionsContract$Event.NotificationsPermissionResult)) {
            if (permissionsContract$Event.equals(PermissionsContract$Event.NextClicked.INSTANCE)) {
                emitEffect(PermissionsContract$Effect.NavigateNext.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        boolean z3 = ((PermissionsContract$Event.NotificationsPermissionResult) permissionsContract$Event).success;
        do {
            value = stateFlowImpl.getValue();
            permissionsContract$State = (PermissionsContract$State) value;
            permissionsContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, PermissionsContract$State.copy$default(permissionsContract$State, null, z3 ? permissionsContract$UiPermissionState2 : permissionsContract$UiPermissionState, false, false, 27)));
        updateNextButtonState();
    }

    public final void updateNextButtonState() {
        StateFlowImpl stateFlowImpl;
        Object value;
        PermissionsContract$State permissionsContract$State;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2;
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            permissionsContract$State = (PermissionsContract$State) value;
            permissionsContract$State.getClass();
            permissionsContract$UiPermissionState = permissionsContract$State.contactsPermissionState;
            permissionsContract$UiPermissionState2 = PermissionsContract$UiPermissionState.Granted;
        } while (!stateFlowImpl.compareAndSet(value, PermissionsContract$State.copy$default(permissionsContract$State, null, null, false, (permissionsContract$UiPermissionState == permissionsContract$UiPermissionState2) && (!permissionsContract$State.isNotificationsPermissionVisible || permissionsContract$State.notificationsPermissionState == permissionsContract$UiPermissionState2), 15)));
    }
}
