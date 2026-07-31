package com.google.android.exoplayer2.ui;

import android.view.View;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StyledPlayerControlView$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StyledPlayerControlView$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((StyledPlayerControlView) obj).onFullScreenButtonClicked(view);
                break;
            case 1:
                ((StyledPlayerControlView.AudioTrackSelectionAdapter) obj).lambda$onBindViewHolderAtZeroPosition$0(view);
                break;
            case 2:
                ((StyledPlayerControlView.SettingViewHolder) obj).lambda$new$0(view);
                break;
            case 3:
                ((StyledPlayerControlView.TextTrackSelectionAdapter) obj).lambda$onBindViewHolderAtZeroPosition$0(view);
                break;
            default:
                ((StyledPlayerControlViewLayoutManager) obj).onOverflowButtonClick(view);
                break;
        }
    }
}
