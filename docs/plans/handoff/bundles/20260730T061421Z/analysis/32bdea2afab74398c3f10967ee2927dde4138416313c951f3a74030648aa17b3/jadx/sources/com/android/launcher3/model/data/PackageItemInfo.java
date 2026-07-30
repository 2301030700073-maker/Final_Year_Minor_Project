package com.android.launcher3.model.data;

import java.util.Objects;

/* loaded from: classes.dex */
public class PackageItemInfo extends ItemInfoWithIcon {
    public String packageName;

    public PackageItemInfo(String str) {
        this.packageName = str;
        this.itemType = -1;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public ItemInfoWithIcon mo1clone() {
        return new PackageItemInfo(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public String dumpProperties() {
        return super.dumpProperties() + " packageName=" + this.packageName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PackageItemInfo.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.packageName, ((PackageItemInfo) obj).packageName);
    }

    public int hashCode() {
        return Objects.hash(this.packageName);
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public Object mo1clone() {
        return new PackageItemInfo(this);
    }

    public PackageItemInfo(PackageItemInfo packageItemInfo) {
        this.packageName = packageItemInfo.packageName;
        this.itemType = -1;
    }
}
