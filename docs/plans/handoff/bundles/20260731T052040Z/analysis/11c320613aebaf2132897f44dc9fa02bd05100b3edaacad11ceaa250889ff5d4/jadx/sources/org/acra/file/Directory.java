package org.acra.file;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.util.List;
import kotlin.UIntArray;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Directory {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Directory[] $VALUES;
    public static final Directory CACHE;
    public static final Directory EXTERNAL_CACHE;
    public static final Directory EXTERNAL_FILES;
    public static final Directory EXTERNAL_STORAGE;
    public static final Directory FILES;
    public static final Directory FILES_LEGACY;
    public static final Directory NO_BACKUP_FILES;
    public static final Directory ROOT;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CACHE extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return new File(context.getCacheDir(), str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EXTERNAL_CACHE extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return new File(context.getExternalCacheDir(), str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EXTERNAL_FILES extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return new File(context.getExternalFilesDir(null), str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EXTERNAL_STORAGE extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return new File(Environment.getExternalStorageDirectory(), str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FILES extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return new File(context.getFilesDir(), str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FILES_LEGACY extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            return (StringsKt__StringsJVMKt.startsWith(str, "/", false) ? Directory.ROOT : Directory.FILES).getFile(context, str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NO_BACKUP_FILES extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            noBackupFilesDir.getClass();
            return new File(noBackupFilesDir, str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ROOT extends Directory {
        @Override // org.acra.file.Directory
        public final File getFile(Context context, String str) {
            context.getClass();
            str.getClass();
            String str2 = File.separator;
            str2.getClass();
            List split$default = StringsKt.split$default(str, new String[]{str2}, 2);
            if (split$default.size() == 1) {
                return new File(str);
            }
            File[] listRoots = File.listRoots();
            UIntArray.Iterator it = Intrinsics.iterator(listRoots);
            while (it.hasNext()) {
                File file = (File) it.next();
                Object obj = split$default.get(0);
                String path = file.getPath();
                path.getClass();
                String str3 = File.separator;
                str3.getClass();
                if (Intrinsics.areEqual(obj, StringsKt__StringsJVMKt.replace$default(path, str3, ""))) {
                    return new File(file, (String) split$default.get(1));
                }
            }
            return new File(listRoots[0], str);
        }
    }

    private static final /* synthetic */ Directory[] $values() {
        return new Directory[]{FILES_LEGACY, FILES, EXTERNAL_FILES, CACHE, EXTERNAL_CACHE, NO_BACKUP_FILES, EXTERNAL_STORAGE, ROOT};
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        FILES_LEGACY = new FILES_LEGACY("FILES_LEGACY", 0, defaultConstructorMarker);
        FILES = new FILES("FILES", 1, defaultConstructorMarker);
        EXTERNAL_FILES = new EXTERNAL_FILES("EXTERNAL_FILES", 2, defaultConstructorMarker);
        CACHE = new CACHE("CACHE", 3, defaultConstructorMarker);
        EXTERNAL_CACHE = new EXTERNAL_CACHE("EXTERNAL_CACHE", 4, defaultConstructorMarker);
        NO_BACKUP_FILES = new NO_BACKUP_FILES("NO_BACKUP_FILES", 5, defaultConstructorMarker);
        EXTERNAL_STORAGE = new EXTERNAL_STORAGE("EXTERNAL_STORAGE", 6, defaultConstructorMarker);
        ROOT = new ROOT("ROOT", 7, defaultConstructorMarker);
        Directory[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    public /* synthetic */ Directory(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Directory valueOf(String str) {
        return (Directory) Enum.valueOf(Directory.class, str);
    }

    public static Directory[] values() {
        return (Directory[]) $VALUES.clone();
    }

    public abstract File getFile(Context context, String str);

    private Directory(String str, int i) {
    }
}
