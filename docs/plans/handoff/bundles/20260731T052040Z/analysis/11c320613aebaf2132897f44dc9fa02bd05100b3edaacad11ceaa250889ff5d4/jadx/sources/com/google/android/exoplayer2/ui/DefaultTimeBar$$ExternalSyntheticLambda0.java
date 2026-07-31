package com.google.android.exoplayer2.ui;

import android.view.View;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultTimeBar$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ View f$0;

    public /* synthetic */ DefaultTimeBar$$ExternalSyntheticLambda0(View view, int i) {
        this.$r8$classId = i;
        this.f$0 = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        View view = this.f$0;
        switch (i) {
            case 0:
                ((DefaultTimeBar) view).lambda$new$0();
                break;
            default:
                ((StyledPlayerControlView) view).updateProgress();
                break;
        }
    }
}
