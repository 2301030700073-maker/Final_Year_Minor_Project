package org.fdroid.database;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.core.content.pm.PackageInfoCompat;
import androidx.core.os.LocaleListCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.i18n.ErrorBundle;
import org.fdroid.LocaleChooser;
import org.fdroid.database.AppDao;
import org.fdroid.database.AppDaoInt;
import org.fdroid.fdroid.nearby.peers.BonjourPeer;
import org.fdroid.index.IndexParser;
import org.fdroid.index.v2.FileV2;
import org.fdroid.index.v2.MetadataV2;
import org.fdroid.index.v2.ReflectionDiffer;
import org.fdroid.index.v2.Screenshots;

/* compiled from: AppDao.kt */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\ba\u0018\u00002\u00020\u0001:\u0001JJ(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017J8\u0010\u0002\u001a\u00020\u0003*\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\u0004\u0018\u0001`\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J>\u0010\u0002\u001a\u00020\u0003*\u001c\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0010\u0018\u00010\fj\u0004\u0018\u0001`\u00112\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0003J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H'J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H'J\u0016\u0010\u0016\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00170\u0010H'J*\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\n\u001a\u00020\u000bH\u0017J2\u0010\u001b\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00150\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J(\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\"\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J,\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010\u00072\b\u0010\"\u001a\u0004\u0018\u00010\u0007H'J\u0010\u0010 \u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H'J\u0018\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0%2\u0006\u0010\u0006\u001a\u00020\u0007H'J\u001a\u0010$\u001a\u0004\u0018\u00010&2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00102\u0006\u0010\u0006\u001a\u00020\u0007H'J\u001a\u0010(\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010H'J\u001e\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00150\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J\u001c\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00100%2\u0006\u0010,\u001a\u00020#H'J$\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00100%2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020#H'J\u001a\u0010.\u001a\u0004\u0018\u00010+2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J.\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u000205H\u0016J6\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00101\u001a\u0002022\u0006\u0010-\u001a\u00020\u00072\b\u00103\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u000205H\u0016J6\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00101\u001a\u0002022\u0006\u0010\u0004\u001a\u00020\u00052\b\u00103\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0007H\u0002JB\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00101\u001a\u0002022\u0014\b\u0002\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002090\fH\u0002J\u001c\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00103\u001a\u00020\u0007H'J$\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010-\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0007H'J$\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0007H'J\u0014\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%H'J\u0014\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%H'J\u001c\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010-\u001a\u00020\u0007H'J\u001c\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010-\u001a\u00020\u0007H'J\u001c\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010\u0004\u001a\u00020\u0005H'J\u001c\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u0010\u0004\u001a\u00020\u0005H'J\"\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010H'J\u001c\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00100%2\u0006\u00101\u001a\u000202H\u0016J\u0010\u0010>\u001a\u00020#2\u0006\u0010-\u001a\u00020\u0007H'J\u0010\u0010?\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0018\u0010@\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J \u0010A\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H'J(\u0010B\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0007H'J\u0018\u0010D\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H'J \u0010D\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H'J(\u0010E\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0007H'J\b\u0010F\u001a\u00020#H'J\b\u0010G\u001a\u00020#H'J\b\u0010H\u001a\u00020#H'J\b\u0010I\u001a\u00020\u0003H'¨\u0006K"}, d2 = {"Lorg/fdroid/database/AppDaoInt;", "Lorg/fdroid/database/AppDao;", "insert", "", "repoId", "", "packageName", "", "app", "Lorg/fdroid/index/v2/MetadataV2;", "locales", "Landroidx/core/os/LocaleListCompat;", "", "Lorg/fdroid/index/v2/FileV2;", "Lorg/fdroid/index/v2/LocalizedFileV2;", BonjourPeer.TYPE, "", "Lorg/fdroid/index/v2/LocalizedFileListV2;", "appMetadata", "Lorg/fdroid/database/AppMetadata;", "localizedFiles", "Lorg/fdroid/database/LocalizedFile;", "insertLocalizedFileLists", "Lorg/fdroid/database/LocalizedFileList;", "updateApp", "jsonObject", "Lkotlinx/serialization/json/JsonObject;", "diffAndUpdate", "diffAndUpdateLocalizedFileList", "updatePreferredSigner", "preferredSigner", "updateCompatibility", "updateAppMetadata", "name", ErrorBundle.SUMMARY_ENTRY, "", "getApp", "Landroidx/lifecycle/LiveData;", "Lorg/fdroid/database/App;", "getRepositoryIdsForApp", "getAppMetadata", "getLocalizedFiles", "getAppOverviewItems", "Lorg/fdroid/database/AppOverviewItem;", "limit", "category", "getAppOverviewItem", "getAppListItems", "Lorg/fdroid/database/AppListItem;", "packageManager", "Landroid/content/pm/PackageManager;", "searchQuery", "sortOrder", "Lorg/fdroid/database/AppListSortOrder;", "escapeQuery", "map", "installedPackages", "Landroid/content/pm/PackageInfo;", "getAppListItemsByName", "getAppListItemsByLastUpdated", "packageNames", "getInstalledAppListItems", "getNumberOfAppsInCategory", "getNumberOfAppsInRepository", "deleteAppMetadata", "deleteLocalizedFiles", "deleteLocalizedFile", "locale", "deleteLocalizedFileLists", "deleteLocalizedFileList", "countApps", "countLocalizedFiles", "countLocalizedFileLists", "clearAll", "AppListLiveData", "database_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface AppDaoInt extends AppDao {

    /* compiled from: AppDao.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppListSortOrder.values().length];
            try {
                iArr[AppListSortOrder.LAST_UPDATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppListSortOrder.NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    void clearAll();

    int countApps();

    int countLocalizedFileLists();

    int countLocalizedFiles();

    void deleteAppMetadata(long repoId, String packageName);

    void deleteLocalizedFile(long repoId, String packageName, String type, String locale);

    void deleteLocalizedFileList(long repoId, String packageName, String type, String locale);

    void deleteLocalizedFileLists(long repoId, String packageName);

    void deleteLocalizedFileLists(long repoId, String packageName, String type);

    void deleteLocalizedFiles(long repoId, String packageName, String type);

    @Override // org.fdroid.database.AppDao
    LiveData getApp(String packageName);

    @Override // org.fdroid.database.AppDao
    App getApp(long repoId, String packageName);

    LiveData getAppListItems(long repoId, String searchQuery);

    @Override // org.fdroid.database.AppDao
    LiveData getAppListItems(PackageManager packageManager, long repoId, String searchQuery, AppListSortOrder sortOrder);

    @Override // org.fdroid.database.AppDao
    LiveData getAppListItems(PackageManager packageManager, String category, String searchQuery, AppListSortOrder sortOrder);

    @Override // org.fdroid.database.AppDao
    LiveData getAppListItems(PackageManager packageManager, String searchQuery, AppListSortOrder sortOrder);

    LiveData getAppListItems(String searchQuery);

    LiveData getAppListItems(String category, String searchQuery);

    LiveData getAppListItems(List<String> packageNames);

    LiveData getAppListItemsByLastUpdated();

    LiveData getAppListItemsByLastUpdated(long repoId);

    LiveData getAppListItemsByLastUpdated(String category);

    LiveData getAppListItemsByName();

    LiveData getAppListItemsByName(long repoId);

    LiveData getAppListItemsByName(String category);

    List<AppMetadata> getAppMetadata();

    AppMetadata getAppMetadata(long repoId, String packageName);

    AppOverviewItem getAppOverviewItem(long repoId, String packageName);

    @Override // org.fdroid.database.AppDao
    LiveData getAppOverviewItems(int limit);

    @Override // org.fdroid.database.AppDao
    LiveData getAppOverviewItems(String category, int limit);

    @Override // org.fdroid.database.AppDao
    LiveData getInstalledAppListItems(PackageManager packageManager);

    List<LocalizedFile> getLocalizedFiles(long repoId, String packageName);

    @Override // org.fdroid.database.AppDao
    int getNumberOfAppsInCategory(String category);

    @Override // org.fdroid.database.AppDao
    int getNumberOfAppsInRepository(long repoId);

    @Override // org.fdroid.database.AppDao
    List<Long> getRepositoryIdsForApp(String packageName);

    @Override // org.fdroid.database.AppDao
    void insert(long repoId, String packageName, MetadataV2 app, LocaleListCompat locales);

    void insert(List<LocalizedFile> localizedFiles);

    void insert(AppMetadata appMetadata);

    void insertLocalizedFileLists(List<LocalizedFileList> localizedFiles);

    void updateApp(long repoId, String packageName, JsonObject jsonObject, LocaleListCompat locales);

    int updateAppMetadata(AppMetadata appMetadata);

    void updateAppMetadata(long repoId, String packageName, String name, String summary);

    @Override // org.fdroid.database.AppDao
    void updateCompatibility(long repoId);

    @Deprecated
    void updatePreferredSigner(long repoId, String packageName, String preferredSigner);

    /* compiled from: AppDao.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void insert(AppDaoInt appDaoInt, long j, String packageName, MetadataV2 app, LocaleListCompat locales) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(app, "app");
            Intrinsics.checkNotNullParameter(locales, "locales");
            appDaoInt.insert(AppKt.toAppMetadata(app, j, packageName, false, locales));
            insert(appDaoInt, app.getIcon(), j, packageName, "icon");
            insert(appDaoInt, app.getFeatureGraphic(), j, packageName, "featureGraphic");
            insert(appDaoInt, app.getPromoGraphic(), j, packageName, "promoGraphic");
            insert(appDaoInt, app.getTvBanner(), j, packageName, "tvBanner");
            Screenshots screenshots = app.getScreenshots();
            if (screenshots != null) {
                insertLocalizedFileListV2(appDaoInt, screenshots.getPhone(), j, packageName, "phone");
                insertLocalizedFileListV2(appDaoInt, screenshots.getSevenInch(), j, packageName, "sevenInch");
                insertLocalizedFileListV2(appDaoInt, screenshots.getTenInch(), j, packageName, "tenInch");
                insertLocalizedFileListV2(appDaoInt, screenshots.getWear(), j, packageName, "wear");
                insertLocalizedFileListV2(appDaoInt, screenshots.getTv(), j, packageName, "tv");
            }
        }

        private static void insert(AppDaoInt appDaoInt, Map<String, FileV2> map, long j, String str, String str2) {
            List<LocalizedFile> localizedFile;
            if (map == null || (localizedFile = AppKt.toLocalizedFile(map, j, str, str2)) == null) {
                return;
            }
            appDaoInt.insert(localizedFile);
        }

        private static void insertLocalizedFileListV2(AppDaoInt appDaoInt, Map<String, ? extends List<FileV2>> map, long j, String str, String str2) {
            List<LocalizedFileList> localizedFileList;
            if (map == null || (localizedFileList = AppKt.toLocalizedFileList(map, j, str, str2)) == null) {
                return;
            }
            appDaoInt.insertLocalizedFileLists(localizedFileList);
        }

        public static void updateApp(AppDaoInt appDaoInt, long j, String packageName, JsonObject jsonObject, LocaleListCompat locales) {
            List<String> list;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(locales, "locales");
            if (jsonObject == null) {
                appDaoInt.deleteAppMetadata(j, packageName);
                return;
            }
            AppMetadata appMetadata = appDaoInt.getAppMetadata(j, packageName);
            if (appMetadata != null) {
                list = AppDaoKt.DENY_LIST;
                for (String str : list) {
                    if (jsonObject.containsKey((Object) str)) {
                        throw new SerializationException(str);
                    }
                }
                AppMetadata appMetadata2 = (AppMetadata) ReflectionDiffer.INSTANCE.applyDiff(appMetadata, jsonObject);
                if (jsonObject.containsKey("name") || jsonObject.containsKey(ErrorBundle.SUMMARY_ENTRY)) {
                    LocaleChooser localeChooser = LocaleChooser.INSTANCE;
                    appMetadata2 = appMetadata2.copy((r51 & 1) != 0 ? appMetadata2.repoId : 0L, (r51 & 2) != 0 ? appMetadata2.packageName : null, (r51 & 4) != 0 ? appMetadata2.added : 0L, (r51 & 8) != 0 ? appMetadata2.lastUpdated : 0L, (r51 & 16) != 0 ? appMetadata2.name : null, (r51 & 32) != 0 ? appMetadata2.summary : null, (r51 & 64) != 0 ? appMetadata2.description : null, (r51 & 128) != 0 ? appMetadata2.localizedName : (String) localeChooser.getBestLocale(appMetadata2.getName(), locales), (r51 & 256) != 0 ? appMetadata2.localizedSummary : (String) localeChooser.getBestLocale(appMetadata2.getSummary(), locales), (r51 & 512) != 0 ? appMetadata2.webSite : null, (r51 & 1024) != 0 ? appMetadata2.changelog : null, (r51 & 2048) != 0 ? appMetadata2.license : null, (r51 & PKIFailureInfo.certConfirmed) != 0 ? appMetadata2.sourceCode : null, (r51 & 8192) != 0 ? appMetadata2.issueTracker : null, (r51 & 16384) != 0 ? appMetadata2.translation : null, (r51 & 32768) != 0 ? appMetadata2.preferredSigner : null, (r51 & PKIFailureInfo.notAuthorized) != 0 ? appMetadata2.video : null, (r51 & PKIFailureInfo.unsupportedVersion) != 0 ? appMetadata2.authorName : null, (r51 & PKIFailureInfo.transactionIdInUse) != 0 ? appMetadata2.authorEmail : null, (r51 & PKIFailureInfo.signerNotTrusted) != 0 ? appMetadata2.authorWebSite : null, (r51 & PKIFailureInfo.badCertTemplate) != 0 ? appMetadata2.authorPhone : null, (r51 & PKIFailureInfo.badSenderNonce) != 0 ? appMetadata2.donate : null, (r51 & 4194304) != 0 ? appMetadata2.liberapayID : null, (r51 & 8388608) != 0 ? appMetadata2.liberapay : null, (r51 & 16777216) != 0 ? appMetadata2.openCollective : null, (r51 & 33554432) != 0 ? appMetadata2.bitcoin : null, (r51 & 67108864) != 0 ? appMetadata2.litecoin : null, (r51 & 134217728) != 0 ? appMetadata2.flattrID : null, (r51 & 268435456) != 0 ? appMetadata2.categories : null, (r51 & PKIFailureInfo.duplicateCertReq) != 0 ? appMetadata2.isCompatible : false);
                }
                appDaoInt.updateAppMetadata(appMetadata2);
                List<LocalizedFile> localizedFiles = appDaoInt.getLocalizedFiles(j, packageName);
                diffAndUpdate(appDaoInt, localizedFiles, j, packageName, "icon", jsonObject);
                diffAndUpdate(appDaoInt, localizedFiles, j, packageName, "featureGraphic", jsonObject);
                diffAndUpdate(appDaoInt, localizedFiles, j, packageName, "promoGraphic", jsonObject);
                diffAndUpdate(appDaoInt, localizedFiles, j, packageName, "tvBanner", jsonObject);
                JsonElement jsonElement = (JsonElement) jsonObject.get("screenshots");
                if (jsonElement instanceof JsonNull) {
                    appDaoInt.deleteLocalizedFileLists(j, packageName);
                    return;
                }
                if (jsonElement instanceof JsonObject) {
                    JsonObject jsonObject2 = (JsonObject) jsonElement;
                    diffAndUpdateLocalizedFileList(appDaoInt, j, packageName, "phone", jsonObject2);
                    diffAndUpdateLocalizedFileList(appDaoInt, j, packageName, "sevenInch", jsonObject2);
                    diffAndUpdateLocalizedFileList(appDaoInt, j, packageName, "tenInch", jsonObject2);
                    diffAndUpdateLocalizedFileList(appDaoInt, j, packageName, "wear", jsonObject2);
                    diffAndUpdateLocalizedFileList(appDaoInt, j, packageName, "tv", jsonObject2);
                    return;
                }
                return;
            }
            Json json = IndexParser.getJson();
            KSerializer serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(MetadataV2.class));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            AppDao.DefaultImpls.insert$default(appDaoInt, j, packageName, (MetadataV2) json.decodeFromJsonElement(serializer, jsonObject), null, 8, null);
        }

        private static void diffAndUpdate(final AppDaoInt appDaoInt, List<LocalizedFile> list, final long j, final String str, final String str2, JsonObject jsonObject) {
            List<String> list2;
            DbDiffUtils dbDiffUtils = DbDiffUtils.INSTANCE;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((LocalizedFile) obj).getType(), str2)) {
                    arrayList.add(obj);
                }
            }
            Function2 function2 = new Function2() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    boolean diffAndUpdate$lambda$5;
                    diffAndUpdate$lambda$5 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$5((String) obj2, (LocalizedFile) obj3);
                    return Boolean.valueOf(diffAndUpdate$lambda$5);
                }
            };
            Function1 function1 = new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    LocalizedFile diffAndUpdate$lambda$6;
                    diffAndUpdate$lambda$6 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$6(j, str, str2, (String) obj2);
                    return diffAndUpdate$lambda$6;
                }
            };
            Function0 function0 = new Function0() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit diffAndUpdate$lambda$7;
                    diffAndUpdate$lambda$7 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$7(AppDaoInt.this, j, str, str2);
                    return diffAndUpdate$lambda$7;
                }
            };
            Function1 function12 = new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit diffAndUpdate$lambda$8;
                    diffAndUpdate$lambda$8 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$8(AppDaoInt.this, j, str, str2, (String) obj2);
                    return diffAndUpdate$lambda$8;
                }
            };
            Function1 function13 = new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit diffAndUpdate$lambda$9;
                    diffAndUpdate$lambda$9 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$9(AppDaoInt.this, (List) obj2);
                    return diffAndUpdate$lambda$9;
                }
            };
            Function1 function14 = new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    boolean diffAndUpdate$lambda$10;
                    diffAndUpdate$lambda$10 = AppDaoInt.DefaultImpls.diffAndUpdate$lambda$10((LocalizedFile) obj2);
                    return Boolean.valueOf(diffAndUpdate$lambda$10);
                }
            };
            list2 = AppDaoKt.DENY_FILE_LIST;
            dbDiffUtils.diffAndUpdateTable(jsonObject, str2, arrayList, function2, function1, function0, function12, function13, function14, list2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean diffAndUpdate$lambda$5(String locale, LocalizedFile item) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            Intrinsics.checkNotNullParameter(item, "item");
            return Intrinsics.areEqual(item.getLocale(), locale);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static LocalizedFile diffAndUpdate$lambda$6(long j, String str, String str2, String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            return new LocalizedFile(j, str, str2, locale, "", null, null, null, BERTags.FLAGS, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdate$lambda$7(AppDaoInt appDaoInt, long j, String str, String str2) {
            appDaoInt.deleteLocalizedFiles(j, str, str2);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdate$lambda$8(AppDaoInt appDaoInt, long j, String str, String str2, String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            appDaoInt.deleteLocalizedFile(j, str, str2, locale);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdate$lambda$9(AppDaoInt appDaoInt, List list) {
            Intrinsics.checkNotNullParameter(list, "list");
            appDaoInt.insert((List<LocalizedFile>) list);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean diffAndUpdate$lambda$10(LocalizedFile it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.getName().length() > 0;
        }

        private static void diffAndUpdateLocalizedFileList(final AppDaoInt appDaoInt, final long j, final String str, final String str2, JsonObject jsonObject) {
            DbDiffUtils.INSTANCE.diffAndUpdateListTable(jsonObject, str2, new Function2() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    List diffAndUpdateLocalizedFileList$lambda$12;
                    diffAndUpdateLocalizedFileList$lambda$12 = AppDaoInt.DefaultImpls.diffAndUpdateLocalizedFileList$lambda$12(j, str, str2, (String) obj, (JsonArray) obj2);
                    return diffAndUpdateLocalizedFileList$lambda$12;
                }
            }, new Function0() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit diffAndUpdateLocalizedFileList$lambda$13;
                    diffAndUpdateLocalizedFileList$lambda$13 = AppDaoInt.DefaultImpls.diffAndUpdateLocalizedFileList$lambda$13(AppDaoInt.this, j, str, str2);
                    return diffAndUpdateLocalizedFileList$lambda$13;
                }
            }, new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit diffAndUpdateLocalizedFileList$lambda$14;
                    diffAndUpdateLocalizedFileList$lambda$14 = AppDaoInt.DefaultImpls.diffAndUpdateLocalizedFileList$lambda$14(AppDaoInt.this, j, str, str2, (String) obj);
                    return diffAndUpdateLocalizedFileList$lambda$14;
                }
            }, new Function2() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit diffAndUpdateLocalizedFileList$lambda$15;
                    diffAndUpdateLocalizedFileList$lambda$15 = AppDaoInt.DefaultImpls.diffAndUpdateLocalizedFileList$lambda$15(AppDaoInt.this, (String) obj, (List) obj2);
                    return diffAndUpdateLocalizedFileList$lambda$15;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static List diffAndUpdateLocalizedFileList$lambda$12(long j, String str, String str2, String locale, JsonArray jsonArray) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
            Json json = IndexParser.getJson();
            KSerializer serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(List.class, KTypeProjection.Companion.invariant(Reflection.typeOf(FileV2.class))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            Iterable iterable = (Iterable) json.decodeFromJsonElement(serializer, jsonArray);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(AppKt.toLocalizedFileList((FileV2) it.next(), j, str, str2, locale));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdateLocalizedFileList$lambda$13(AppDaoInt appDaoInt, long j, String str, String str2) {
            appDaoInt.deleteLocalizedFileLists(j, str, str2);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdateLocalizedFileList$lambda$14(AppDaoInt appDaoInt, long j, String str, String str2, String locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            appDaoInt.deleteLocalizedFileList(j, str, str2, locale);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit diffAndUpdateLocalizedFileList$lambda$15(AppDaoInt appDaoInt, String str, List fileLists) {
            Intrinsics.checkNotNullParameter(str, "<unused var>");
            Intrinsics.checkNotNullParameter(fileLists, "fileLists");
            appDaoInt.insertLocalizedFileLists(fileLists);
            return Unit.INSTANCE;
        }

        public static LiveData getAppListItems(AppDaoInt appDaoInt, PackageManager packageManager, String str, AppListSortOrder sortOrder) {
            Intrinsics.checkNotNullParameter(packageManager, "packageManager");
            Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
            if (str == null || str.length() == 0) {
                int i = WhenMappings.$EnumSwitchMapping$0[sortOrder.ordinal()];
                if (i == 1) {
                    return map$default(appDaoInt, appDaoInt.getAppListItemsByLastUpdated(), packageManager, null, 2, null);
                }
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return map$default(appDaoInt, appDaoInt.getAppListItemsByName(), packageManager, null, 2, null);
            }
            return map$default(appDaoInt, appDaoInt.getAppListItems(escapeQuery(appDaoInt, str)), packageManager, null, 2, null);
        }

        public static LiveData getAppListItems(AppDaoInt appDaoInt, PackageManager packageManager, String category, String str, AppListSortOrder sortOrder) {
            Intrinsics.checkNotNullParameter(packageManager, "packageManager");
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
            if (str == null || str.length() == 0) {
                int i = WhenMappings.$EnumSwitchMapping$0[sortOrder.ordinal()];
                if (i == 1) {
                    return map$default(appDaoInt, appDaoInt.getAppListItemsByLastUpdated(category), packageManager, null, 2, null);
                }
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return map$default(appDaoInt, appDaoInt.getAppListItemsByName(category), packageManager, null, 2, null);
            }
            return map$default(appDaoInt, appDaoInt.getAppListItems(category, escapeQuery(appDaoInt, str)), packageManager, null, 2, null);
        }

        public static LiveData getAppListItems(AppDaoInt appDaoInt, PackageManager packageManager, long j, String str, AppListSortOrder sortOrder) {
            Intrinsics.checkNotNullParameter(packageManager, "packageManager");
            Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
            if (str == null || str.length() == 0) {
                int i = WhenMappings.$EnumSwitchMapping$0[sortOrder.ordinal()];
                if (i == 1) {
                    return map$default(appDaoInt, appDaoInt.getAppListItemsByLastUpdated(j), packageManager, null, 2, null);
                }
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return map$default(appDaoInt, appDaoInt.getAppListItemsByName(j), packageManager, null, 2, null);
            }
            return map$default(appDaoInt, appDaoInt.getAppListItems(j, escapeQuery(appDaoInt, str)), packageManager, null, 2, null);
        }

        private static String escapeQuery(AppDaoInt appDaoInt, String str) {
            return "\"*" + Regex.Companion.fromLiteral("\"").replace(str, "\"\"") + "*\"";
        }

        public static /* synthetic */ LiveData map$default(AppDaoInt appDaoInt, LiveData liveData, PackageManager packageManager, Map map, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: map");
            }
            if ((i & 2) != 0) {
                List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
                Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(installedPackages, 10)), 16));
                for (Object obj2 : installedPackages) {
                    String packageName = ((PackageInfo) obj2).packageName;
                    Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
                    linkedHashMap.put(packageName, obj2);
                }
                map = linkedHashMap;
            }
            return map(appDaoInt, liveData, packageManager, map);
        }

        private static LiveData map(AppDaoInt appDaoInt, LiveData liveData, PackageManager packageManager, final Map<String, ? extends PackageInfo> map) {
            return Transformations.map(liveData, new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    List map$lambda$18;
                    map$lambda$18 = AppDaoInt.DefaultImpls.map$lambda$18(map, (List) obj);
                    return map$lambda$18;
                }
            });
        }

        public static LiveData getInstalledAppListItems(final AppDaoInt appDaoInt, PackageManager packageManager) {
            Intrinsics.checkNotNullParameter(packageManager, "packageManager");
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(installedPackages, 10)), 16));
            for (Object obj : installedPackages) {
                linkedHashMap.put(((PackageInfo) obj).packageName, obj);
            }
            List<String> list = CollectionsKt.toList(linkedHashMap.keySet());
            if (list.size() <= 999) {
                return map(appDaoInt, appDaoInt.getAppListItems(list), packageManager, linkedHashMap);
            }
            final AppListLiveData appListLiveData = new AppListLiveData();
            CollectionsKt.chunked(list, RoomDatabase.MAX_BIND_PARAMETER_CNT, new Function1() { // from class: org.fdroid.database.AppDaoInt$DefaultImpls$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit installedAppListItems$lambda$21$lambda$20;
                    installedAppListItems$lambda$21$lambda$20 = AppDaoInt.DefaultImpls.getInstalledAppListItems$lambda$21$lambda$20(AppDaoInt.AppListLiveData.this, appDaoInt, (List) obj2);
                    return installedAppListItems$lambda$21$lambda$20;
                }
            });
            return map(appDaoInt, appListLiveData, packageManager, linkedHashMap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Unit getInstalledAppListItems$lambda$21$lambda$20(AppListLiveData appListLiveData, AppDaoInt appDaoInt, List it) {
            Intrinsics.checkNotNullParameter(it, "it");
            appListLiveData.addSource(appDaoInt.getAppListItems((List<String>) it));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static List map$lambda$18(Map map, List items) {
            Intrinsics.checkNotNullParameter(items, "items");
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(items, 10));
            Iterator it = items.iterator();
            while (it.hasNext()) {
                AppListItem appListItem = (AppListItem) it.next();
                PackageInfo packageInfo = (PackageInfo) map.get(appListItem.getPackageName());
                if (packageInfo != null) {
                    appListItem = appListItem.copy((r28 & 1) != 0 ? appListItem.repoId : 0L, (r28 & 2) != 0 ? appListItem.packageName : null, (r28 & 4) != 0 ? appListItem.name : null, (r28 & 8) != 0 ? appListItem.summary : null, (r28 & 16) != 0 ? appListItem.lastUpdated : 0L, (r28 & 32) != 0 ? appListItem.antiFeatures : null, (r28 & 64) != 0 ? appListItem.localizedIcon : null, (r28 & 128) != 0 ? appListItem.isCompatible : false, (r28 & 256) != 0 ? appListItem.preferredSigner : null, (r28 & 512) != 0 ? appListItem.installedVersionName : packageInfo.versionName, (r28 & 1024) != 0 ? appListItem.installedVersionCode : Long.valueOf(PackageInfoCompat.getLongVersionCode(packageInfo)));
                }
                arrayList.add(appListItem);
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppDao.kt */
    static final class AppListLiveData extends MediatorLiveData {
        private final ArrayList list = new ArrayList();

        public final void addSource(LiveData liveData) {
            Intrinsics.checkNotNullParameter(liveData, "liveData");
            this.list.add(liveData);
            addSource(liveData, new AppDaoKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: org.fdroid.database.AppDaoInt$AppListLiveData$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit addSource$lambda$4;
                    addSource$lambda$4 = AppDaoInt.AppListLiveData.addSource$lambda$4(AppDaoInt.AppListLiveData.this, (List) obj);
                    return addSource$lambda$4;
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit addSource$lambda$4(AppListLiveData appListLiveData, List list) {
            ArrayList arrayList = appListLiveData.list;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            boolean z = true;
            while (it.hasNext()) {
                List list2 = (List) ((LiveData) it.next()).getValue();
                if (list2 == null) {
                    list2 = CollectionsKt.emptyList();
                    z = false;
                }
                CollectionsKt.addAll(arrayList2, list2);
            }
            if (z) {
                final Function2 function2 = new Function2() { // from class: org.fdroid.database.AppDaoInt$AppListLiveData$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int addSource$lambda$4$lambda$2;
                        addSource$lambda$4$lambda$2 = AppDaoInt.AppListLiveData.addSource$lambda$4$lambda$2((AppListItem) obj, (AppListItem) obj2);
                        return Integer.valueOf(addSource$lambda$4$lambda$2);
                    }
                };
                appListLiveData.setValue(CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: org.fdroid.database.AppDaoInt$AppListLiveData$$ExternalSyntheticLambda2
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int addSource$lambda$4$lambda$3;
                        addSource$lambda$4$lambda$3 = AppDaoInt.AppListLiveData.addSource$lambda$4$lambda$3(Function2.this, obj, obj2);
                        return addSource$lambda$4$lambda$3;
                    }
                }));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int addSource$lambda$4$lambda$3(Function2 function2, Object obj, Object obj2) {
            return ((Number) function2.invoke(obj, obj2)).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int addSource$lambda$4$lambda$2(AppListItem appListItem, AppListItem appListItem2) {
            String name = appListItem.getName();
            if (name == null) {
                name = "";
            }
            String name2 = appListItem2.getName();
            return StringsKt.compareTo(name, name2 != null ? name2 : "", true);
        }
    }
}
