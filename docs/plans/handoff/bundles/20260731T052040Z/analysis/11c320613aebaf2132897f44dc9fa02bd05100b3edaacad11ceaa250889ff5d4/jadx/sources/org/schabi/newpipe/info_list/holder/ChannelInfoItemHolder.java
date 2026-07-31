package org.schabi.newpipe.info_list.holder;

import android.view.ViewGroup;
import coil3.ComponentRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChannelInfoItemHolder extends ChannelMiniInfoItemHolder {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ChannelInfoItemHolder(ComponentRegistry.Builder builder, int i, ViewGroup viewGroup, int i2) {
        super(builder, i, viewGroup, 0);
        this.$r8$classId = i2;
    }

    @Override // org.schabi.newpipe.info_list.holder.ChannelMiniInfoItemHolder
    public int getDescriptionMaxLineCount(String str) {
        switch (this.$r8$classId) {
            case 1:
                return 8;
            default:
                return super.getDescriptionMaxLineCount(str);
        }
    }
}
