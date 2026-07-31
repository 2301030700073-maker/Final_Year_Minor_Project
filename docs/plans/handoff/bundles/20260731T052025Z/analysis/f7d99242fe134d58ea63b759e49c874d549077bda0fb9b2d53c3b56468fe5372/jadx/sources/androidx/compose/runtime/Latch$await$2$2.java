package androidx.compose.runtime;

import android.view.InputDevice;
import android.view.KeyEvent;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerStoppedException;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferredImpl;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityState;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListStateDescription;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Latch$await$2$2 implements Function1 {
    public final /* synthetic */ Object $co;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public Latch$await$2$2(ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2, boolean z, MutableState mutableState) {
        this.$r8$classId = 4;
        this.this$0 = exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;
        this.$co = mutableState;
    }

    private final Object invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(Object obj) {
        long j;
        SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
        synchronized (SnapshotKt.lock) {
            j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = 1 + j;
        }
        return new MutableSnapshot(j, snapshotIdSet, (Function1) this.this$0, (Function1) this.$co);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        MessageListStateDescription messageListStateDescription;
        switch (this.$r8$classId) {
            case 0:
                Latch latch = (Latch) this.this$0;
                Object obj2 = latch.lock;
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.$co;
                synchronized (obj2) {
                    ((ArrayList) latch.awaiters).remove(cancellableContinuationImpl);
                }
                return Unit.INSTANCE;
            case 1:
                CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) this.this$0;
                LowLightBoostControl lowLightBoostControl = (LowLightBoostControl) this.$co;
                if (completableDeferredImpl == lowLightBoostControl._updateSignal) {
                    lowLightBoostControl._updateSignal = null;
                }
                return Unit.INSTANCE;
            case 2:
                KeyEvent keyEvent = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                if (((LegacyTextFieldState) this.this$0).getHandleState() == HandleState.Selection && keyEvent.getKeyCode() == 4 && Key_androidKt.m558getTypeZmokQxo(keyEvent) == 1) {
                    ((TextFieldSelectionManager) this.$co).m310deselect_kEHs6E$foundation(null);
                    r5 = true;
                }
                return Boolean.valueOf(r5);
            case 3:
                KeyEvent keyEvent2 = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                FocusOwner focusOwner = (FocusOwner) this.this$0;
                InputDevice device = keyEvent2.getDevice();
                if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent2.getSource() == 33554433) && Key_androidKt.m558getTypeZmokQxo(keyEvent2) == 2 && keyEvent2.getSource() != 257)) {
                    if (BasicTextKt.m269access$isKeyCodeYhN2O0w(19, keyEvent2)) {
                        r5 = ((FocusOwnerImpl) focusOwner).m415moveFocusaToIllA(5, true);
                    } else if (BasicTextKt.m269access$isKeyCodeYhN2O0w(20, keyEvent2)) {
                        r5 = ((FocusOwnerImpl) focusOwner).m415moveFocusaToIllA(6, true);
                    } else if (BasicTextKt.m269access$isKeyCodeYhN2O0w(21, keyEvent2)) {
                        r5 = ((FocusOwnerImpl) focusOwner).m415moveFocusaToIllA(3, true);
                    } else if (BasicTextKt.m269access$isKeyCodeYhN2O0w(22, keyEvent2)) {
                        r5 = ((FocusOwnerImpl) focusOwner).m415moveFocusaToIllA(4, true);
                    } else if (BasicTextKt.m269access$isKeyCodeYhN2O0w(23, keyEvent2)) {
                        SoftwareKeyboardController softwareKeyboardController = ((LegacyTextFieldState) this.$co).keyboardController;
                        if (softwareKeyboardController != null) {
                            ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
                        }
                        r5 = true;
                    }
                }
                return Boolean.valueOf(r5);
            case 4:
                KeyEvent keyEvent3 = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                MutableState mutableState = (MutableState) this.$co;
                ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2) this.this$0;
                if (Key_androidKt.m558getTypeZmokQxo(keyEvent3) == 1) {
                    long m557getKeyZmokQxo = Key_androidKt.m557getKeyZmokQxo(keyEvent3);
                    int i = Key.$r8$clinit;
                    if ((Key.m556equalsimpl0(m557getKeyZmokQxo, Key.DirectionCenter) || Key.m556equalsimpl0(m557getKeyZmokQxo, Key.Enter) || Key.m556equalsimpl0(m557getKeyZmokQxo, Key.NumPadEnter)) || Key.m556equalsimpl0(Key_androidKt.Key(keyEvent3.getKeyCode()), Key.Spacebar)) {
                        exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2.invoke();
                    }
                }
                Boolean bool = Boolean.FALSE;
                mutableState.setValue(bool);
                return bool;
            case 5:
                KeyEvent keyEvent4 = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                MutableState mutableState2 = (MutableState) this.$co;
                if (!((TooltipStateImpl) this.this$0).isVisible()) {
                    mutableState2.setValue(Boolean.FALSE);
                }
                return Boolean.FALSE;
            case 6:
                return invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(obj);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    ((ListenableWorker) this.this$0).mStopReason.compareAndSet(-256, ((WorkerStoppedException) th).reason);
                }
                ((ListenableFuture) this.$co).cancel(false);
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int intValue = ((Number) obj).intValue();
                return ((KoinModuleKt$$ExternalSyntheticLambda1) this.this$0).invoke(Integer.valueOf(intValue), ((List) this.$co).get(intValue));
            case 9:
                return ((KoinModuleKt$$ExternalSyntheticLambda0) this.this$0).invoke(((List) this.$co).get(((Number) obj).intValue()));
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                MessageListScreenAccessibilityState messageListScreenAccessibilityState = (MessageListScreenAccessibilityState) this.this$0;
                MessageItemUi messageItemUi = (MessageItemUi) this.$co;
                messageListScreenAccessibilityState.getClass();
                Map map = messageListScreenAccessibilityState.stateDescription;
                MessageItemUi.State state = messageItemUi.state;
                boolean z = messageItemUi.selected;
                boolean z2 = messageItemUi.active;
                int i2 = MessageListScreenAccessibilityState.WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i2 == 1 && z2) {
                    messageListStateDescription = MessageListStateDescription.ActiveNewMessage;
                } else if (i2 == 2 && z2) {
                    messageListStateDescription = MessageListStateDescription.ActiveReadMessage;
                } else if (i2 == 3 && z2) {
                    messageListStateDescription = MessageListStateDescription.ActiveUnreadMessage;
                } else if (i2 == 1 && z) {
                    messageListStateDescription = MessageListStateDescription.SelectedNewMessage;
                } else if (i2 == 2 && z) {
                    messageListStateDescription = MessageListStateDescription.SelectedReadMessage;
                } else if (i2 == 3 && z) {
                    messageListStateDescription = MessageListStateDescription.SelectedUnreadMessage;
                } else if (i2 == 1) {
                    messageListStateDescription = MessageListStateDescription.NewMessage;
                } else if (i2 == 2) {
                    messageListStateDescription = MessageListStateDescription.ReadMessage;
                } else {
                    if (i2 != 3) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    messageListStateDescription = MessageListStateDescription.UnreadMessage;
                }
                String str = (String) MapsKt__MapsKt.getValue(map, messageListStateDescription);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.StateDescription;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[0];
                semanticsPropertyReceiver.set(semanticsPropertyKey, str);
                return Unit.INSTANCE;
            case 11:
                return ((KoinModuleKt$$ExternalSyntheticLambda0) this.this$0).invoke(((ImmutableList) this.$co).get(((Number) obj).intValue()));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((DisplayAccount) obj).getClass();
                ((Function1) this.this$0).invoke((DisplayAccount) this.$co);
                return Unit.INSTANCE;
            case 13:
                return ((KoinModuleKt$$ExternalSyntheticLambda0) this.this$0).invoke(((List) this.$co).get(((Number) obj).intValue()));
            default:
                return ((KoinModuleKt$$ExternalSyntheticLambda0) this.this$0).invoke(((List) this.$co).get(((Number) obj).intValue()));
        }
    }

    public /* synthetic */ Latch$await$2$2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$co = obj2;
    }
}
