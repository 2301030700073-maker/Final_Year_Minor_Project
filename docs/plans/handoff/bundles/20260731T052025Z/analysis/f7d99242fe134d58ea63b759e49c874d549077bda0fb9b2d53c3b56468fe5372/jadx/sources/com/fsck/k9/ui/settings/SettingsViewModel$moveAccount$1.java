package com.fsck.k9.ui.settings;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.SegmentedButtonContentMeasurePolicy;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.notification.impl.dismisser.DefaultNotificationDismisser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsViewModel$moveAccount$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $account;
    public final /* synthetic */ int $newPosition;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$moveAccount$1(int i, SnapshotStateList snapshotStateList, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.$newPosition = i;
        this.this$0 = snapshotStateList;
        this.$account = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = this.$newPosition;
        Object obj2 = this.$account;
        switch (i) {
            case 0:
                return new SettingsViewModel$moveAccount$1((SettingsViewModel) this.this$0, (LegacyAccountDto) obj2, i2, continuation);
            case 1:
                SettingsViewModel$moveAccount$1 settingsViewModel$moveAccount$1 = new SettingsViewModel$moveAccount$1((LazyListState) obj2, i2, continuation, 1);
                settingsViewModel$moveAccount$1.this$0 = obj;
                return settingsViewModel$moveAccount$1;
            case 2:
                return new SettingsViewModel$moveAccount$1((Animatable) this.this$0, i2, (SegmentedButtonContentMeasurePolicy) obj2, continuation);
            case 3:
                return new SettingsViewModel$moveAccount$1(i2, (SnapshotStateList) this.this$0, obj2, continuation);
            default:
                SettingsViewModel$moveAccount$1 settingsViewModel$moveAccount$12 = new SettingsViewModel$moveAccount$1((DefaultNotificationDismisser) obj2, i2, continuation, 4);
                settingsViewModel$moveAccount$12.this$0 = obj;
                return settingsViewModel$moveAccount$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((SettingsViewModel$moveAccount$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((SettingsViewModel$moveAccount$1) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((SettingsViewModel$moveAccount$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((SettingsViewModel$moveAccount$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((SettingsViewModel$moveAccount$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x010f, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(500, r15) == r7) goto L60;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.settings.SettingsViewModel$moveAccount$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$moveAccount$1(Animatable animatable, int i, SegmentedButtonContentMeasurePolicy segmentedButtonContentMeasurePolicy, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.this$0 = animatable;
        this.$newPosition = i;
        this.$account = segmentedButtonContentMeasurePolicy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModel$moveAccount$1(SettingsViewModel settingsViewModel, LegacyAccountDto legacyAccountDto, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = settingsViewModel;
        this.$account = legacyAccountDto;
        this.$newPosition = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SettingsViewModel$moveAccount$1(Object obj, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.$account = obj;
        this.$newPosition = i;
    }
}
