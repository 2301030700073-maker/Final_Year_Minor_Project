package com.xwray.groupie.viewbinding;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.xwray.groupie.Item;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BindableItem extends Item {
    public abstract void bind(ViewBinding viewBinding);

    @Override // com.xwray.groupie.Item
    public final void bind(com.xwray.groupie.GroupieViewHolder groupieViewHolder) {
        throw new RuntimeException("Doesn't get called");
    }

    @Override // com.xwray.groupie.Item
    public final com.xwray.groupie.GroupieViewHolder createViewHolder(View view) {
        return new GroupieViewHolder(initializeViewBinding(view));
    }

    public abstract ViewBinding initializeViewBinding(View view);

    @Override // com.xwray.groupie.Item
    public void bind(GroupieViewHolder groupieViewHolder, int i, List list) {
        bind(groupieViewHolder.binding, i, list);
    }

    public void bind(ViewBinding viewBinding, int i, List list) {
        bind(viewBinding);
    }
}
