package org.schabi.newpipe.util;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface OnClickGesture {
    void drag(Object obj, RecyclerView.ViewHolder viewHolder);

    void held(Object obj);

    void selected(Object obj);
}
