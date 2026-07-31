package androidx.glance.appwidget;

import android.content.ComponentName;
import android.content.Context;
import androidx.compose.ui.unit.DpSize;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TranslationContext {
    public final ComponentName actionBroadcastReceiver;
    public final Integer actionTargetId;
    public final int appWidgetId;
    public final boolean canUseSelectableGroup;
    public final Context context;
    public final AtomicBoolean isBackgroundSpecified;
    public final boolean isLazyCollectionDescendant;
    public final boolean isRtl;
    public final int itemPosition;
    public final AtomicInteger lastViewId;
    public final int layoutCollectionViewId;
    public final LayoutConfiguration layoutConfiguration;
    public final long layoutSize;
    public final InsertedViewInfo parentContext;

    public TranslationContext(Context context, int i, boolean z, LayoutConfiguration layoutConfiguration, int i2, boolean z2, AtomicInteger atomicInteger, InsertedViewInfo insertedViewInfo, AtomicBoolean atomicBoolean, long j, int i3, boolean z3, Integer num, ComponentName componentName) {
        this.context = context;
        this.appWidgetId = i;
        this.isRtl = z;
        this.layoutConfiguration = layoutConfiguration;
        this.itemPosition = i2;
        this.isLazyCollectionDescendant = z2;
        this.lastViewId = atomicInteger;
        this.parentContext = insertedViewInfo;
        this.isBackgroundSpecified = atomicBoolean;
        this.layoutSize = j;
        this.layoutCollectionViewId = i3;
        this.canUseSelectableGroup = z3;
        this.actionTargetId = num;
        this.actionBroadcastReceiver = componentName;
    }

    /* renamed from: copy-tbIExKY$default, reason: not valid java name */
    public static TranslationContext m743copytbIExKY$default(TranslationContext translationContext, int i, AtomicInteger atomicInteger, InsertedViewInfo insertedViewInfo, AtomicBoolean atomicBoolean, long j, int i2, Integer num, int i3) {
        return new TranslationContext(translationContext.context, translationContext.appWidgetId, translationContext.isRtl, translationContext.layoutConfiguration, (i3 & 16) != 0 ? translationContext.itemPosition : i, (i3 & 32) != 0 ? translationContext.isLazyCollectionDescendant : true, (i3 & 64) != 0 ? translationContext.lastViewId : atomicInteger, (i3 & 128) != 0 ? translationContext.parentContext : insertedViewInfo, (i3 & 256) != 0 ? translationContext.isBackgroundSpecified : atomicBoolean, (i3 & 512) != 0 ? translationContext.layoutSize : j, (i3 & 1024) != 0 ? translationContext.layoutCollectionViewId : i2, (i3 & 4096) != 0 ? translationContext.canUseSelectableGroup : true, (i3 & 8192) != 0 ? translationContext.actionTargetId : num, translationContext.actionBroadcastReceiver);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TranslationContext) {
            TranslationContext translationContext = (TranslationContext) obj;
            if (this.context.equals(translationContext.context) && this.appWidgetId == translationContext.appWidgetId && this.isRtl == translationContext.isRtl && this.layoutConfiguration == translationContext.layoutConfiguration && this.itemPosition == translationContext.itemPosition && this.isLazyCollectionDescendant == translationContext.isLazyCollectionDescendant && Intrinsics.areEqual(this.lastViewId, translationContext.lastViewId) && Intrinsics.areEqual(this.parentContext, translationContext.parentContext) && Intrinsics.areEqual(this.isBackgroundSpecified, translationContext.isBackgroundSpecified) && this.layoutSize == translationContext.layoutSize && this.layoutCollectionViewId == translationContext.layoutCollectionViewId && this.canUseSelectableGroup == translationContext.canUseSelectableGroup && Intrinsics.areEqual(this.actionTargetId, translationContext.actionTargetId) && Intrinsics.areEqual(this.actionBroadcastReceiver, translationContext.actionBroadcastReceiver)) {
                return true;
            }
        }
        return false;
    }

    public final TranslationContext forChild(InsertedViewInfo insertedViewInfo, int i) {
        return m743copytbIExKY$default(this, i, null, insertedViewInfo, null, 0L, 0, null, 32623);
    }

    public final int hashCode() {
        int hashCode = (this.isBackgroundSpecified.hashCode() + ((this.parentContext.hashCode() + ((this.lastViewId.hashCode() + ((((((this.layoutConfiguration.hashCode() + (((((this.context.hashCode() * 31) + this.appWidgetId) * 31) + (this.isRtl ? 1231 : 1237)) * 31)) * 31) + this.itemPosition) * 31) + (this.isLazyCollectionDescendant ? 1231 : 1237)) * 31)) * 31)) * 31)) * 31;
        long j = this.layoutSize;
        int i = (((((((((int) (j ^ (j >>> 32))) + hashCode) * 31) + this.layoutCollectionViewId) * 31) - 1) * 31) + (this.canUseSelectableGroup ? 1231 : 1237)) * 31;
        Integer num = this.actionTargetId;
        int hashCode2 = (i + (num == null ? 0 : num.hashCode())) * 31;
        ComponentName componentName = this.actionBroadcastReceiver;
        return hashCode2 + (componentName != null ? componentName.hashCode() : 0);
    }

    public final String toString() {
        return "TranslationContext(context=" + this.context + ", appWidgetId=" + this.appWidgetId + ", isRtl=" + this.isRtl + ", layoutConfiguration=" + this.layoutConfiguration + ", itemPosition=" + this.itemPosition + ", isLazyCollectionDescendant=" + this.isLazyCollectionDescendant + ", lastViewId=" + this.lastViewId + ", parentContext=" + this.parentContext + ", isBackgroundSpecified=" + this.isBackgroundSpecified + ", layoutSize=" + ((Object) DpSize.m713toStringimpl(this.layoutSize)) + ", layoutCollectionViewId=" + this.layoutCollectionViewId + ", layoutCollectionItemId=-1, canUseSelectableGroup=" + this.canUseSelectableGroup + ", actionTargetId=" + this.actionTargetId + ", actionBroadcastReceiver=" + this.actionBroadcastReceiver + ')';
    }
}
