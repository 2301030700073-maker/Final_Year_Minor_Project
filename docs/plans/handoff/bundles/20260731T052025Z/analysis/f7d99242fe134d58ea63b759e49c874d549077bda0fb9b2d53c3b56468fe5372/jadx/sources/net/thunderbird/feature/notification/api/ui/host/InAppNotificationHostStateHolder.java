package net.thunderbird.feature.notification.api.ui.host;

import androidx.viewpager.widget.ViewPager;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.common.collections.PriorityQueue;
import net.thunderbird.feature.notification.api.NotificationSeverity;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InAppNotificationHostStateHolder {
    public final PriorityQueue bannerGlobalVisuals;
    public final ReadonlyStateFlow currentInAppNotificationHostState;
    public final ImmutableSet enabled;
    public final StateFlowImpl internalState;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InAppNotificationHostStateImpl {
        public final BannerGlobalVisual bannerGlobalVisual;
        public final ImmutableSet bannerInlineVisuals;

        public InAppNotificationHostStateImpl(BannerGlobalVisual bannerGlobalVisual, ImmutableSet immutableSet) {
            immutableSet.getClass();
            this.bannerGlobalVisual = bannerGlobalVisual;
            this.bannerInlineVisuals = immutableSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v2, types: [kotlinx.collections.immutable.ImmutableSet] */
        public static InAppNotificationHostStateImpl copy$default(InAppNotificationHostStateImpl inAppNotificationHostStateImpl, BannerGlobalVisual bannerGlobalVisual, PersistentOrderedSet persistentOrderedSet, int i) {
            if ((i & 1) != 0) {
                bannerGlobalVisual = inAppNotificationHostStateImpl.bannerGlobalVisual;
            }
            PersistentOrderedSet persistentOrderedSet2 = persistentOrderedSet;
            if ((i & 2) != 0) {
                persistentOrderedSet2 = inAppNotificationHostStateImpl.bannerInlineVisuals;
            }
            inAppNotificationHostStateImpl.getClass();
            inAppNotificationHostStateImpl.getClass();
            persistentOrderedSet2.getClass();
            return new InAppNotificationHostStateImpl(bannerGlobalVisual, persistentOrderedSet2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InAppNotificationHostStateImpl)) {
                return false;
            }
            InAppNotificationHostStateImpl inAppNotificationHostStateImpl = (InAppNotificationHostStateImpl) obj;
            return Intrinsics.areEqual(this.bannerGlobalVisual, inAppNotificationHostStateImpl.bannerGlobalVisual) && Intrinsics.areEqual(this.bannerInlineVisuals, inAppNotificationHostStateImpl.bannerInlineVisuals);
        }

        public final int hashCode() {
            BannerGlobalVisual bannerGlobalVisual = this.bannerGlobalVisual;
            return (this.bannerInlineVisuals.hashCode() + ((bannerGlobalVisual == null ? 0 : bannerGlobalVisual.hashCode()) * 31)) * 31;
        }

        public final String toString() {
            return "InAppNotificationHostStateImpl(bannerGlobalVisual=" + this.bannerGlobalVisual + ", bannerInlineVisuals=" + this.bannerInlineVisuals + ", snackbarVisual=null)";
        }
    }

    public InAppNotificationHostStateHolder(ImmutableSet immutableSet) {
        immutableSet.getClass();
        this.enabled = immutableSet;
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(new InAppNotificationHostStateImpl(null, PersistentOrderedSet.EMPTY));
        this.internalState = MutableStateFlow;
        this.currentInAppNotificationHostState = FlowKt.asStateFlow(MutableStateFlow);
        this.bannerGlobalVisuals = new PriorityQueue(new ViewPager.AnonymousClass1(24), CollectionsKt.toList(EmptyList.INSTANCE));
    }

    public static InAppNotificationHostStateImpl toInAppNotificationData(InAppNotification inAppNotification) {
        InAppNotificationStyle inAppNotificationStyle = inAppNotification.getInAppNotificationStyle();
        BannerGlobalVisual bannerGlobalVisual = null;
        if (!(inAppNotificationStyle instanceof InAppNotificationStyle.BannerGlobalNotification)) {
            inAppNotificationStyle = null;
        }
        if (inAppNotificationStyle != null) {
            if (!(inAppNotificationStyle instanceof InAppNotificationStyle.BannerGlobalNotification)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                return null;
            }
            String contentText = inAppNotification.getContentText();
            if (contentText == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerGlobalNotification style must have a contentText not null");
                return null;
            }
            NotificationSeverity severity = inAppNotification.getSeverity();
            Set access$getActionsWithoutTap = UuidKt.access$getActionsWithoutTap(inAppNotification);
            int size = access$getActionsWithoutTap.size();
            if (size < 0 || size >= 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerGlobalNotification style must have at zero or one action");
                return null;
            }
            bannerGlobalVisual = new BannerGlobalVisual(contentText, severity, (NotificationAction) CollectionsKt.firstOrNull((List) Okio.toPersistentList(access$getActionsWithoutTap)));
        }
        BannerInlineVisual from = NodeUtils.from(inAppNotification);
        PersistentOrderedSet persistentSetOf = from != null ? Okio.persistentSetOf(from) : PersistentOrderedSet.EMPTY;
        inAppNotification.getInAppNotificationStyle();
        return new InAppNotificationHostStateImpl(bannerGlobalVisual, persistentSetOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dismiss(net.thunderbird.feature.notification.api.ui.host.visual.InAppNotificationVisual r8) {
        /*
            r7 = this;
            r8.getClass()
        L3:
            kotlinx.coroutines.flow.StateFlowImpl r0 = r7.internalState
            java.lang.Object r1 = r0.getValue()
            r2 = r1
            net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder$InAppNotificationHostStateImpl r2 = (net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) r2
            boolean r3 = r8 instanceof net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual
            if (r3 == 0) goto L21
            net.thunderbird.core.common.collections.PriorityQueue r3 = r7.bannerGlobalVisuals
            boolean r4 = r3.remove(r8)
            if (r4 == 0) goto L21
            java.util.ArrayList r3 = r3.heap
            java.lang.Object r3 = kotlin.collections.CollectionsKt.firstOrNull(r3)
            net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual r3 = (net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual) r3
            goto L23
        L21:
            net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual r3 = r2.bannerGlobalVisual
        L23:
            boolean r4 = r8 instanceof net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual
            r5 = 0
            if (r4 == 0) goto L2c
            r4 = r8
            net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual r4 = (net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual) r4
            goto L2d
        L2c:
            r4 = r5
        L2d:
            if (r4 == 0) goto L3a
            kotlinx.collections.immutable.ImmutableSet r6 = r2.bannerInlineVisuals
            java.util.LinkedHashSet r4 = org.jsoup.helper.Validate.minus(r6, r4)
            kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet r4 = okio.Okio.toPersistentSet(r4)
            goto L3c
        L3a:
            kotlinx.collections.immutable.ImmutableSet r4 = r2.bannerInlineVisuals
        L3c:
            r2.getClass()
            r8.equals(r5)
            r4.getClass()
            net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder$InAppNotificationHostStateImpl r2 = new net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder$InAppNotificationHostStateImpl
            r2.<init>(r3, r4)
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder.dismiss(net.thunderbird.feature.notification.api.ui.host.visual.InAppNotificationVisual):void");
    }

    public final boolean isEnabled(DisplayInAppNotificationFlag displayInAppNotificationFlag) {
        ImmutableSet immutableSet = this.enabled;
        if (immutableSet == null || !immutableSet.isEmpty()) {
            Iterator<E> it = immutableSet.iterator();
            while (it.hasNext()) {
                if (((DisplayInAppNotificationFlag) it.next()) == displayInAppNotificationFlag) {
                    return true;
                }
            }
        }
        DisplayInAppNotificationFlag.Companion.getClass();
        return Intrinsics.areEqual(immutableSet, DisplayInAppNotificationFlag.AllNotifications);
    }

    public final String toString() {
        return "InAppNotificationHostState(enabled=" + this.enabled + ", currentInAppNotificationData=" + this.currentInAppNotificationHostState.$$delegate_0.getValue() + ")";
    }
}
