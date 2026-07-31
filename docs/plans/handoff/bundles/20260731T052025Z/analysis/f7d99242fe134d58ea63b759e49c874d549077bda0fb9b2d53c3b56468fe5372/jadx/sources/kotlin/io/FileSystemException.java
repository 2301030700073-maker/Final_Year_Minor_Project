package kotlin.io;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.minidns.dnsmessage.Question;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class FileSystemException extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileSystemException(java.io.File r3, java.io.File r4, java.lang.String r5) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = r3.toString()
            r0.<init>(r3)
            if (r4 == 0) goto L1c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r1 = " -> "
            r3.<init>(r1)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r0.append(r3)
        L1c:
            java.lang.String r3 = ": "
            java.lang.String r3 = r3.concat(r5)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileSystemException.<init>(java.io.File, java.io.File, java.lang.String):void");
    }

    public static void throwIfRequired(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == 1) {
            throw ((IOException) arrayList.get(0));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(((Exception) it.next()).getMessage());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        FileSystemException fileSystemException = new FileSystemException(sb.toString());
        DesugarCollections.unmodifiableList(arrayList);
        throw fileSystemException;
    }

    public FileSystemException(Question question, String str) {
        super(ImageAnalysis$$ExternalSyntheticLambda3.m("Validation of request to ", String.valueOf(question), " failed: ", str));
    }

    public FileSystemException(String str, int i, IOException iOException) {
        super(str + ", status code: " + i, iOException);
    }

    public FileSystemException(IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
    }
}
