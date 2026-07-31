package org.schabi.newpipe.settings.export;

import android.content.SharedPreferences;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.file.FileAlreadyExistsException;
import java.util.Arrays;
import java.util.zip.ZipOutputStream;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.streams.io.SharpOutputStream;
import org.schabi.newpipe.streams.io.SharpStream;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.ZipHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ImportExportManager {
    public static final Companion Companion = new Companion();
    public final BackupFileLocator fileLocator;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public ImportExportManager(BackupFileLocator backupFileLocator) {
        this.fileLocator = backupFileLocator;
    }

    public static void loadJsonPrefs(SharedPreferences sharedPreferences, StoredFileHelper storedFileHelper) {
        sharedPreferences.getClass();
        if (!ZipHelper.extractFileFromZip(storedFileHelper, "preferences.json", new ImportExportManager$$ExternalSyntheticLambda0(sharedPreferences, 2))) {
            throw new FileNotFoundException("preferences.json");
        }
    }

    public static void loadSerializedPrefs(SharedPreferences sharedPreferences, StoredFileHelper storedFileHelper) {
        sharedPreferences.getClass();
        if (!ZipHelper.extractFileFromZip(storedFileHelper, "newpipe.settings", new ImportExportManager$$ExternalSyntheticLambda0(sharedPreferences, 3))) {
            throw new FileNotFoundException("newpipe.settings");
        }
    }

    public final void ensureDbDirectoryExists() {
        Path path = this.fileLocator.db;
        FileAttribute[] fileAttributeArr = new FileAttribute[0];
        path.getClass();
        Path parent = path.getParent();
        if (parent == null || Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            return;
        }
        try {
            FileAttribute[] fileAttributeArr2 = (FileAttribute[]) Arrays.copyOf(fileAttributeArr, 0);
            Files.createDirectories(parent, (FileAttribute[]) Arrays.copyOf(fileAttributeArr2, fileAttributeArr2.length)).getClass();
        } catch (FileAlreadyExistsException e) {
            if (!Files.isDirectory(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                throw e;
            }
        }
    }

    public final void exportDatabase(SharedPreferences sharedPreferences, StoredFileHelper storedFileHelper) {
        sharedPreferences.getClass();
        SharpStream stream = storedFileHelper.getStream();
        try {
            stream.setLength(0L);
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new SharpOutputStream(stream), 8192));
            try {
                int i = 0;
                InputStream newInputStream = Files.newInputStream(this.fileLocator.db, new OpenOption[0]);
                try {
                    ZipHelper.addFileToZip(zipOutputStream, "newpipe.db", newInputStream);
                    newInputStream.close();
                    ZipHelper.addFileToZip(zipOutputStream, "newpipe.settings", new ImportExportManager$$ExternalSyntheticLambda0(sharedPreferences, i));
                    ZipHelper.addFileToZip(zipOutputStream, "preferences.json", new ImportExportManager$$ExternalSyntheticLambda0(sharedPreferences, 1));
                    zipOutputStream.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zipOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            stream.close();
            throw th3;
        }
    }
}
