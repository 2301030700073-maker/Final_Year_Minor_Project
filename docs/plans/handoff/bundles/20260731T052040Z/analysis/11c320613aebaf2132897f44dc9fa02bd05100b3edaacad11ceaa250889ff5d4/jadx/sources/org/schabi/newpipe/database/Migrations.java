package org.schabi.newpipe.database;

import androidx.room.migration.MigrationImpl;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.schabi.newpipe.MainActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Migrations {
    public static final MigrationImpl MIGRATION_1_2;
    public static final MigrationImpl MIGRATION_2_3;
    public static final MigrationImpl MIGRATION_3_4;
    public static final MigrationImpl MIGRATION_4_5;
    public static final MigrationImpl MIGRATION_5_6;
    public static final MigrationImpl MIGRATION_6_7;
    public static final MigrationImpl MIGRATION_7_8;
    public static final MigrationImpl MIGRATION_8_9;

    static {
        int i = MainActivity.$r8$clinit;
        MIGRATION_1_2 = new MigrationImpl(1, 2, new ZipFilesKt$$ExternalSyntheticLambda3(15));
        MIGRATION_2_3 = new MigrationImpl(2, 3, new ZipFilesKt$$ExternalSyntheticLambda3(16));
        MIGRATION_3_4 = new MigrationImpl(3, 4, new ZipFilesKt$$ExternalSyntheticLambda3(17));
        MIGRATION_4_5 = new MigrationImpl(4, 5, new ZipFilesKt$$ExternalSyntheticLambda3(18));
        MIGRATION_5_6 = new MigrationImpl(5, 6, new ZipFilesKt$$ExternalSyntheticLambda3(19));
        MIGRATION_6_7 = new MigrationImpl(6, 7, new ZipFilesKt$$ExternalSyntheticLambda3(20));
        MIGRATION_7_8 = new MigrationImpl(7, 8, new ZipFilesKt$$ExternalSyntheticLambda3(21));
        MIGRATION_8_9 = new MigrationImpl(8, 9, new ZipFilesKt$$ExternalSyntheticLambda3(22));
    }
}
