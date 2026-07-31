package org.schabi.newpipe.util;

import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityNodeInfo;
import j$.io.InputStreamRetargetClass;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.schabi.newpipe.settings.export.ImportExportManager$$ExternalSyntheticLambda0;
import org.schabi.newpipe.streams.DataReader;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import us.shandian.giga.get.MissionRecoveryInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ZipHelper {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface InputStreamConsumer {
        void acceptStream(ZipInputStream zipInputStream);
    }

    public static void addFileToZip(ZipOutputStream zipOutputStream, String str, ImportExportManager$$ExternalSyntheticLambda0 importExportManager$$ExternalSyntheticLambda0) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            importExportManager$$ExternalSyntheticLambda0.acceptStream(byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
            try {
                addFileToZip(zipOutputStream, str, byteArrayInputStream);
                byteArrayInputStream.close();
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static boolean extractFileFromZip(StoredFileHelper storedFileHelper, String str, InputStreamConsumer inputStreamConsumer) {
        ZipEntry nextEntry;
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new DataReader.AnonymousClass1(storedFileHelper.getStream())));
        do {
            try {
                nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return false;
                }
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (!nextEntry.getName().equals(str));
        inputStreamConsumer.acceptStream(zipInputStream);
        zipInputStream.close();
        return true;
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        return bundle.getParcelable(str, cls);
    }

    public static Object[] getParcelableArray(Bundle bundle, String str, Class cls) {
        return bundle.getParcelableArray(str, cls);
    }

    public static ArrayList getParcelableArrayList(Bundle bundle, String str, Class cls) {
        return bundle.getParcelableArrayList(str, cls);
    }

    public static ArrayList getParcelableArrayListExtra(Intent intent) {
        return intent.getParcelableArrayListExtra("DownloadManagerService.extra.recoveryInfo", MissionRecoveryInfo.class);
    }

    public static Object getParcelableExtra(Intent intent, String str, Class cls) {
        return intent.getParcelableExtra(str, cls);
    }

    public static Serializable getSerializable(Bundle bundle, String str, Class cls) {
        return bundle.getSerializable(str, cls);
    }

    public static Serializable getSerializableExtra(Intent intent, String str, Class cls) {
        return intent.getSerializableExtra(str, cls);
    }

    public static SparseArray getSparseParcelableArray(Bundle bundle, String str, Class cls) {
        return bundle.getSparseParcelableArray(str, cls);
    }

    public static String getUniqueId(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static boolean zipContainsFile(StoredFileHelper storedFileHelper, String str) {
        ZipEntry nextEntry;
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new DataReader.AnonymousClass1(storedFileHelper.getStream())));
        do {
            try {
                nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return false;
                }
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (!nextEntry.getName().equals(str));
        zipInputStream.close();
        return true;
    }

    public static void addFileToZip(ZipOutputStream zipOutputStream, String str, InputStream inputStream) {
        zipOutputStream.putNextEntry(new ZipEntry(str));
        InputStreamRetargetClass.transferTo(inputStream, zipOutputStream);
    }
}
