package org.schabi.newpipe.extractor.utils;

import java.util.LinkedList;
import java.util.function.IntFunction;
import java.util.regex.Pattern;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.player.mediasession.SessionConnectorActionProvider;
import org.schabi.newpipe.settings.custom.NotificationSlot;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Utils$$ExternalSyntheticLambda2 implements IntFunction {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Utils$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.$r8$classId) {
            case 0:
                return new Pattern[i];
            case 1:
                LinkedList linkedList = VideoDetailFragment.stack;
                return new CharSequence[i];
            case 2:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                return new CharSequence[i];
            case 3:
                return new String[i];
            case 4:
                return new SessionConnectorActionProvider[i];
            default:
                return new NotificationSlot[i];
        }
    }
}
