package org.schabi.newpipe.util;

import android.os.Bundle;
import android.util.Log;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.math.MathKt;
import org.schabi.newpipe.MainActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StateSaver {
    public static final ConcurrentHashMap STATE_OBJECTS_HOLDER = new ConcurrentHashMap();
    public static String cacheDirPath;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface WriteRead {
        String generateSuffix();

        void readFrom(Queue queue);

        void writeTo(LinkedList linkedList);
    }

    public static void clearStateFiles() {
        File[] listFiles;
        int i = MainActivity.$r8$clinit;
        STATE_OBJECTS_HOLDER.clear();
        File file = new File(cacheDirPath);
        if (file.exists()) {
            File file2 = new File(file, "state_cache");
            if (!file2.exists() || (listFiles = file2.listFiles()) == null) {
                return;
            }
            for (File file3 : listFiles) {
                file3.delete();
            }
        }
    }

    public static void onDestroy(SavedState savedState) {
        int i = MainActivity.$r8$clinit;
        if (savedState != null) {
            String str = savedState.pathFileSaved;
            if (str.isEmpty()) {
                return;
            }
            STATE_OBJECTS_HOLDER.remove(savedState.prefixFileSaved);
            try {
                new File(str).delete();
            } catch (Exception unused) {
            }
        }
    }

    public static SavedState tryToRestore(Bundle bundle, WriteRead writeRead) {
        SavedState savedState;
        if (bundle != null && (savedState = (SavedState) MathKt.getParcelable(bundle, "key_saved_state", SavedState.class)) != null) {
            int i = MainActivity.$r8$clinit;
            try {
                Queue queue = (Queue) STATE_OBJECTS_HOLDER.remove(savedState.prefixFileSaved);
                if (queue != null) {
                    writeRead.readFrom(queue);
                    return savedState;
                }
                File file = new File(savedState.pathFileSaved);
                if (file.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                        try {
                            Queue queue2 = (Queue) objectInputStream.readObject();
                            objectInputStream.close();
                            fileInputStream.close();
                            if (queue2 != null) {
                                writeRead.readFrom(queue2);
                            }
                            return savedState;
                        } finally {
                        }
                    } finally {
                    }
                }
            } catch (Exception e) {
                Log.e("StateSaver", "Failed to restore state", e);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (android.text.TextUtils.isEmpty(r7) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.schabi.newpipe.util.SavedState tryToSave(boolean r6, org.schabi.newpipe.util.SavedState r7, android.os.Bundle r8, org.schabi.newpipe.util.StateSaver.WriteRead r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.util.StateSaver.tryToSave(boolean, org.schabi.newpipe.util.SavedState, android.os.Bundle, org.schabi.newpipe.util.StateSaver$WriteRead):org.schabi.newpipe.util.SavedState");
    }
}
