package us.shandian.giga.postprocessing;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.Owner;
import java.io.File;
import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.streams.io.SharpStream;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.io.ChunkFileInputStream;
import us.shandian.giga.io.CircularFileWriter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class Postprocessing implements Serializable {
    private String[] args;
    public transient DownloadMission mission;
    private final String name;
    public boolean reserveSpace;
    protected StreamInfo streamInfo;
    public transient File tempFile;
    public boolean worksOnSameFile = true;

    public Postprocessing(boolean z, String str) {
        this.reserveSpace = z;
        this.name = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Postprocessing getAlgorithm(String str, String[] strArr, StreamInfo streamInfo) {
        int i;
        String str2;
        int i2;
        String str3;
        int i3;
        String str4;
        String str5;
        String str6;
        boolean z;
        boolean z2;
        M4aNoDash m4aNoDash;
        Object[] objArr;
        Object[] objArr2;
        char c;
        char c2;
        char c3;
        i = 4;
        str2 = "webm";
        i2 = 3;
        str3 = "ttml";
        i3 = 2;
        str4 = "mp4D-mp4";
        str5 = "mp4D-m4a";
        str6 = "webm-ogg-d";
        z = false;
        objArr2 = 0;
        objArr = 0;
        z2 = true;
        c3 = 1;
        c2 = 1;
        c = 1;
        switch (str) {
            case "webm-ogg-d":
                m4aNoDash = new M4aNoDash(c2 == true ? 1 : 0, str6, c3 == true ? 1 : 0);
                break;
            case "mp4D-m4a":
                m4aNoDash = new M4aNoDash(objArr == true ? 1 : 0, str5, objArr2 == true ? 1 : 0);
                break;
            case "mp4D-mp4":
                m4aNoDash = new M4aNoDash(i3, str4, c == true ? 1 : 0);
                break;
            case "ttml":
                m4aNoDash = new M4aNoDash(i2, str3, z);
                break;
            case "webm":
                m4aNoDash = new M4aNoDash(i, str2, z2);
                break;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Unimplemented post-processing algorithm: ".concat(str));
                return null;
        }
        ((Postprocessing) m4aNoDash).args = strArr;
        m4aNoDash.streamInfo = streamInfo;
        return m4aNoDash;
    }

    public final String getArgumentAt(int i, String str) {
        String[] strArr = this.args;
        return (strArr == null || i >= strArr.length) ? str : strArr[i];
    }

    public abstract void process(CircularFileWriter circularFileWriter, SharpStream... sharpStreamArr);

    public final void run(DownloadMission downloadMission) {
        long j;
        this.mission = downloadMission;
        downloadMission.done = 0L;
        long length = this.mission.storage.length();
        DownloadMission downloadMission2 = this.mission;
        int i = 0;
        downloadMission2.length = Math.max(length - downloadMission2.offsets[0], downloadMission2.nearLength);
        int i2 = 1;
        Postprocessing$$ExternalSyntheticLambda3 postprocessing$$ExternalSyntheticLambda3 = new Postprocessing$$ExternalSyntheticLambda3(this, 1);
        if (this.worksOnSameFile) {
            int length2 = this.mission.urls.length;
            ChunkFileInputStream[] chunkFileInputStreamArr = new ChunkFileInputStream[length2];
            int i3 = 0;
            while (i3 < length2) {
                try {
                    SharpStream stream = this.mission.storage.getStream();
                    chunkFileInputStreamArr[i3] = new ChunkFileInputStream(stream, this.mission.offsets[i3], i2 < length2 ? this.mission.offsets[i2] : stream.length(), postprocessing$$ExternalSyntheticLambda3);
                    i3++;
                    i2++;
                } catch (Throwable th) {
                    while (i < length2) {
                        ChunkFileInputStream chunkFileInputStream = chunkFileInputStreamArr[i];
                        if (chunkFileInputStream != null && !chunkFileInputStream.isClosed()) {
                            chunkFileInputStream.close();
                        }
                        i++;
                    }
                    File file = this.tempFile;
                    if (file != null) {
                        file.delete();
                        this.tempFile = null;
                    }
                    throw th;
                }
            }
            if (test(chunkFileInputStreamArr)) {
                for (int i4 = 0; i4 < length2; i4++) {
                    chunkFileInputStreamArr[i4].rewind();
                }
                CircularFileWriter circularFileWriter = new CircularFileWriter(this.mission.storage.getStream(), this.tempFile, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(chunkFileInputStreamArr, 24));
                try {
                    circularFileWriter.onProgress = new Postprocessing$$ExternalSyntheticLambda3(this, 2);
                    circularFileWriter.onWriteError = new Postprocessing$$ExternalSyntheticLambda3(this, 0);
                    process(circularFileWriter, chunkFileInputStreamArr);
                    j = circularFileWriter.finalizeFile();
                    circularFileWriter.close();
                } finally {
                }
            } else {
                j = -1;
            }
            while (i < length2) {
                ChunkFileInputStream chunkFileInputStream2 = chunkFileInputStreamArr[i];
                if (chunkFileInputStream2 != null && !chunkFileInputStream2.isClosed()) {
                    chunkFileInputStream2.close();
                }
                i++;
            }
            File file2 = this.tempFile;
            if (file2 != null) {
                file2.delete();
                this.tempFile = null;
            }
        } else {
            if (test(new SharpStream[0])) {
                process(null, new SharpStream[0]);
            }
            j = -1;
        }
        if (j != -1) {
            this.mission.length = j;
        }
        this.mission = null;
    }

    public final void setTemporalDir(File file) {
        this.tempFile = new File(file, ((int) (Math.random() * 100000.0d)) + "_" + System.nanoTime() + ".tmp");
    }

    public boolean test(SharpStream... sharpStreamArr) {
        return true;
    }

    public final String toString() {
        StringBuilder m = Owner.CC.m("{ name=");
        m.append(this.name);
        m.append('[');
        String[] strArr = this.args;
        if (strArr != null) {
            for (String str : strArr) {
                m.append(", ");
                m.append(str);
            }
            m.delete(0, 1);
        }
        m.append("] }");
        return m.toString();
    }
}
