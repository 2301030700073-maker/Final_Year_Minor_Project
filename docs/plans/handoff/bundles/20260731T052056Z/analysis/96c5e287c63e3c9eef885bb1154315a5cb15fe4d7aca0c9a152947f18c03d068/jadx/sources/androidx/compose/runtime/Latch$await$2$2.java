package androidx.compose.runtime;

import android.view.InputDevice;
import android.view.KeyEvent;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerStoppedException;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.wikipedia.activitytab.ActivityTabModules;
import org.wikipedia.activitytab.ModuleType;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Latch$await$2$2 implements Function1 {
    public final /* synthetic */ Object $co;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ Latch$await$2$2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$co = obj2;
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
        boolean z = true;
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
                KeyEvent keyEvent = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                if (((LegacyTextFieldState) this.this$0).getHandleState() == HandleState.Selection && keyEvent.getKeyCode() == 4 && Key_androidKt.m500getTypeZmokQxo(keyEvent) == 1) {
                    ((TextFieldSelectionManager) this.$co).m240deselect_kEHs6E$foundation(null);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                KeyEvent keyEvent2 = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                FocusOwner focusOwner = (FocusOwner) this.this$0;
                InputDevice device = keyEvent2.getDevice();
                if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent2.getSource() == 33554433) && Key_androidKt.m500getTypeZmokQxo(keyEvent2) == 2 && keyEvent2.getSource() != 257)) {
                    if (BasicTextKt.m183isKeyCodeYhN2O0w(19, keyEvent2)) {
                        z = ((FocusOwnerImpl) focusOwner).m363moveFocusaToIllA(5, true);
                    } else if (BasicTextKt.m183isKeyCodeYhN2O0w(20, keyEvent2)) {
                        z = ((FocusOwnerImpl) focusOwner).m363moveFocusaToIllA(6, true);
                    } else if (BasicTextKt.m183isKeyCodeYhN2O0w(21, keyEvent2)) {
                        z = ((FocusOwnerImpl) focusOwner).m363moveFocusaToIllA(3, true);
                    } else if (BasicTextKt.m183isKeyCodeYhN2O0w(22, keyEvent2)) {
                        z = ((FocusOwnerImpl) focusOwner).m363moveFocusaToIllA(4, true);
                    } else if (BasicTextKt.m183isKeyCodeYhN2O0w(23, keyEvent2)) {
                        SoftwareKeyboardController softwareKeyboardController = ((LegacyTextFieldState) this.$co).keyboardController;
                        if (softwareKeyboardController != null) {
                            ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
                        }
                    }
                    return Boolean.valueOf(z);
                }
                z = false;
                return Boolean.valueOf(z);
            case 3:
                KeyEvent keyEvent3 = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                MutableState mutableState = (MutableState) this.$co;
                if (!((TooltipStateImpl) this.this$0).isVisible()) {
                    mutableState.setValue(Boolean.FALSE);
                }
                return Boolean.FALSE;
            case 4:
                return invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(obj);
            case 5:
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    ((ListenableWorker) this.this$0).mStopReason.compareAndSet(-256, ((WorkerStoppedException) th).reason);
                }
                ((ListenableFuture) this.$co).cancel(false);
                return Unit.INSTANCE;
            case 6:
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                DescriptorFactory descriptorFactory = (DescriptorFactory) this.this$0;
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) this.$co;
                callableMemberDescriptor.getClass();
                descriptorFactory.conflict(callableMemberDescriptor2, callableMemberDescriptor);
                return Unit.INSTANCE;
            case 7:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                MutableState mutableState2 = (MutableState) this.$co;
                mutableState2.setValue(((ActivityTabModules) mutableState2.getValue()).setModuleEnabled((ModuleType) this.this$0, booleanValue));
                Prefs prefs = Prefs.INSTANCE;
                Prefs.setActivityTabModules((ActivityTabModules) mutableState2.getValue());
                return Unit.INSTANCE;
            case 8:
                ((PageTitle) obj).getClass();
                ((Function1) this.this$0).invoke((PageTitle) this.$co);
                return Unit.INSTANCE;
            default:
                return ((ForYouCardKt$$ExternalSyntheticLambda1) this.this$0).invoke(((ArrayList) this.$co).get(((Number) obj).intValue()));
        }
    }
}
