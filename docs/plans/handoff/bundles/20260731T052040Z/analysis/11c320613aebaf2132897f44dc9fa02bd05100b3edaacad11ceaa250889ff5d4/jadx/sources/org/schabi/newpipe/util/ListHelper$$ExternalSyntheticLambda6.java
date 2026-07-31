package org.schabi.newpipe.util;

import java.util.function.ToIntFunction;
import org.jsoup.select.Evaluator;
import org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.stream.VideoStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda6 implements ToIntFunction {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda6(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int frameHeight;
        int frameWidth;
        switch (this.$r8$classId) {
            case 0:
                return ((AudioStream) obj).getAverageBitrate();
            case 1:
                return ((Evaluator) obj).cost();
            case 2:
                return ((YoutubeDescriptionHelper.Run) obj).pos;
            case 3:
                return ((YoutubeDescriptionHelper.Run) obj).pos;
            case 4:
                return ((Integer) obj).intValue();
            case 5:
                Frameset frameset = (Frameset) obj;
                frameHeight = frameset.getFrameHeight();
                frameWidth = frameset.getFrameWidth();
                break;
            case 6:
                Frameset frameset2 = (Frameset) obj;
                frameHeight = frameset2.getFrameHeight();
                frameWidth = frameset2.getFrameWidth();
                break;
            case 7:
                return ((byte[]) obj).length;
            default:
                return ListHelper.VIDEO_FORMAT_QUALITY_RANKING.indexOf(((VideoStream) obj).getFormat());
        }
        return frameWidth * frameHeight;
    }
}
