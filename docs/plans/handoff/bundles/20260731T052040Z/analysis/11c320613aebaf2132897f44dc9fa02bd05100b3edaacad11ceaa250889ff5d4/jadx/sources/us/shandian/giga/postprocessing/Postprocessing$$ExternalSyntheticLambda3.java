package us.shandian.giga.postprocessing;

import us.shandian.giga.get.DownloadMission;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Postprocessing$$ExternalSyntheticLambda3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Postprocessing f$0;

    public /* synthetic */ Postprocessing$$ExternalSyntheticLambda3(Postprocessing postprocessing, int i) {
        this.$r8$classId = i;
        this.f$0 = postprocessing;
    }

    public void report(long j) {
        int i = this.$r8$classId;
        Postprocessing postprocessing = this.f$0;
        switch (i) {
            case 1:
                DownloadMission downloadMission = postprocessing.mission;
                long j2 = j - downloadMission.offsets[0];
                if (j2 > downloadMission.done) {
                    postprocessing.mission.done = j2;
                    break;
                }
                break;
            default:
                postprocessing.mission.done = j;
                break;
        }
    }
}
