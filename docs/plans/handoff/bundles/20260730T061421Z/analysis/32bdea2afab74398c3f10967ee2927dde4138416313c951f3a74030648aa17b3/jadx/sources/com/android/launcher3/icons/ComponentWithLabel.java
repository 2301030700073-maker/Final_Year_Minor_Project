package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import com.android.launcher3.icons.cache.CachingLogic;

/* loaded from: classes.dex */
public interface ComponentWithLabel {

    public class ComponentCachingLogic implements CachingLogic {
        public final boolean mAddToMemCache;
        public final PackageManager mPackageManager;

        public ComponentCachingLogic(Context context, boolean z) {
            this.mPackageManager = context.getPackageManager();
            this.mAddToMemCache = z;
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public boolean addToMemCache() {
            return this.mAddToMemCache;
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public ComponentName getComponent(Object obj) {
            return ((ComponentWithLabel) obj).getComponent();
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public CharSequence getLabel(Object obj) {
            return ((ComponentWithLabel) obj).getLabel(this.mPackageManager);
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public UserHandle getUser(Object obj) {
            return ((ComponentWithLabel) obj).getUser();
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public BitmapInfo loadIcon(Context context, ComponentWithLabel componentWithLabel) {
            return BitmapInfo.LOW_RES_INFO;
        }
    }

    ComponentName getComponent();

    CharSequence getLabel(PackageManager packageManager);

    UserHandle getUser();
}
