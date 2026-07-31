package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GroupedLinkedMap$LinkedEntry {
    public final Object key;
    public ArrayList values;
    public GroupedLinkedMap$LinkedEntry prev = this;
    public GroupedLinkedMap$LinkedEntry next = this;

    public GroupedLinkedMap$LinkedEntry(Poolable poolable) {
        this.key = poolable;
    }
}
