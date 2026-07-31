package org.schabi.newpipe.settings.export;

import android.content.Context;
import j$.io.FileRetargetClass;
import j$.nio.file.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class BackupFileLocator {
    public static final Companion Companion = new Companion();
    public final Path db;
    public final Path dbJournal;
    public final Path dbShm;
    public final Path dbWal;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public BackupFileLocator(Context context) {
        context.getClass();
        Path path = FileRetargetClass.toPath(context.getDatabasePath("newpipe.db"));
        path.getClass();
        this.db = path;
        Path resolveSibling = path.resolveSibling("newpipe.db-journal");
        resolveSibling.getClass();
        this.dbJournal = resolveSibling;
        Path resolveSibling2 = path.resolveSibling("newpipe.db-shm");
        resolveSibling2.getClass();
        this.dbShm = resolveSibling2;
        Path resolveSibling3 = path.resolveSibling("newpipe.db-wal");
        resolveSibling3.getClass();
        this.dbWal = resolveSibling3;
    }
}
