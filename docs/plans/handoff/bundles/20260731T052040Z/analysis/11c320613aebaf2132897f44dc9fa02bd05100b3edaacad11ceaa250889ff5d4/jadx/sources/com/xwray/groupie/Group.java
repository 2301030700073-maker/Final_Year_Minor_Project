package com.xwray.groupie;

import org.schabi.newpipe.info_list.StreamSegmentItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Group {
    Item getItem(int i);

    int getItemCount();

    int getPosition(StreamSegmentItem streamSegmentItem);

    void registerGroupDataObserver(GroupDataObserver groupDataObserver);

    void unregisterGroupDataObserver(GroupDataObserver groupDataObserver);
}
