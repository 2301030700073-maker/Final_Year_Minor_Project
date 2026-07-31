package us.shandian.giga.postprocessing;

import java.nio.ByteBuffer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.streams.Mp4DashReader;
import org.schabi.newpipe.streams.io.SharpStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class M4aNoDash extends Postprocessing {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ M4aNoDash(int i, String str, boolean z) {
        super(z, str);
        this.$r8$classId = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:244:0x0325, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0311, code lost:
    
        if (r4 > 0) goto L95;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0653 A[LOOP:17: B:236:0x064d->B:238:0x0653, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0325 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r8v56 */
    /* JADX WARN: Type inference failed for: r8v57, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v61 */
    @Override // us.shandian.giga.postprocessing.Postprocessing
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void process(us.shandian.giga.io.CircularFileWriter r56, org.schabi.newpipe.streams.io.SharpStream... r57) {
        /*
            Method dump skipped, instructions count: 2100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.postprocessing.M4aNoDash.process(us.shandian.giga.io.CircularFileWriter, org.schabi.newpipe.streams.io.SharpStream[]):void");
    }

    @Override // us.shandian.giga.postprocessing.Postprocessing
    public boolean test(SharpStream... sharpStreamArr) {
        switch (this.$r8$classId) {
            case 0:
                Mp4DashReader mp4DashReader = new Mp4DashReader(sharpStreamArr[0]);
                mp4DashReader.parse();
                int[] iArr = (int[]) mp4DashReader.brands;
                if (iArr != null) {
                    int i = iArr[0];
                    if (i == 1684108136 || i == 1769172789) {
                        return true;
                    }
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Not parsed");
                }
                return false;
            case 1:
                ByteBuffer allocate = ByteBuffer.allocate(4);
                sharpStreamArr[0].read(allocate.array());
                int i2 = allocate.getInt();
                if (i2 == 440786851) {
                    return true;
                }
                if (i2 != 1332176723) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m("file not recognized, failed to demux the audio stream");
                }
                return false;
            default:
                return super.test(sharpStreamArr);
        }
    }
}
