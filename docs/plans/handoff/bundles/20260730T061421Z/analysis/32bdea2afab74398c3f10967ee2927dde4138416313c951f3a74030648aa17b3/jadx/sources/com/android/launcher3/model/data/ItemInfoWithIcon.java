package com.android.launcher3.model.data;

import com.android.launcher3.icons.BitmapInfo;

/* loaded from: classes.dex */
public abstract class ItemInfoWithIcon extends ItemInfo {
    public BitmapInfo bitmap;
    public int runtimeStatusFlags;

    public ItemInfoWithIcon() {
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract ItemInfoWithIcon mo1clone();

    @Override // com.android.launcher3.model.data.ItemInfo
    public boolean isDisabled() {
        return (this.runtimeStatusFlags & 63) != 0;
    }

    public boolean usingLowResIcon() {
        return this.bitmap.isLowRes();
    }

    public ItemInfoWithIcon(ItemInfoWithIcon itemInfoWithIcon) {
        super(itemInfoWithIcon);
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
        this.bitmap = itemInfoWithIcon.bitmap;
        this.runtimeStatusFlags = itemInfoWithIcon.runtimeStatusFlags;
    }
}
