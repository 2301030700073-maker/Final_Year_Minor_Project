package org.wikipedia.database;

import androidx.compose.ui.graphics.Color;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.mwapi.MwServiceError$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppDatabase$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AppDatabase$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                RoomDatabase.Builder databaseBuilder = Room.databaseBuilder(Jsoup.getInstance(), AppDatabase.class, "wikipedia.db");
                databaseBuilder.addMigrations(AppDatabase.MIGRATION_19_20, AppDatabase.MIGRATION_20_21, AppDatabase.MIGRATION_21_22, AppDatabase.MIGRATION_22_23, AppDatabase.MIGRATION_23_24, AppDatabase.MIGRATION_24_25, AppDatabase.MIGRATION_25_26, AppDatabase.MIGRATION_26_27, AppDatabase.MIGRATION_26_28, AppDatabase.MIGRATION_27_28, AppDatabase.MIGRATION_28_29, AppDatabase.MIGRATION_29_30, AppDatabase.MIGRATION_30_31, AppDatabase.MIGRATION_31_32, AppDatabase.MIGRATION_32_33, AppDatabase.MIGRATION_33_34);
                databaseBuilder.requireMigration = false;
                databaseBuilder.allowDestructiveMigrationOnDowngrade = true;
                databaseBuilder.allowDestructiveMigrationForAllTables = false;
                break;
            case 3:
                long j = Color.Unspecified;
                break;
            case 26:
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                break;
        }
        return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
    }
}
