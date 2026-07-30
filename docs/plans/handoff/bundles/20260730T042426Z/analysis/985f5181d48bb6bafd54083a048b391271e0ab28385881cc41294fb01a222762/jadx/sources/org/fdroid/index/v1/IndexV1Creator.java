package org.fdroid.index.v1;

import android.content.pm.ApplicationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Log;
import androidx.core.content.pm.PackageInfoCompat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JvmStreamsKt;
import org.fdroid.index.IndexCreator;
import org.fdroid.index.IndexParser;
import org.fdroid.index.IndexUtils;

/* compiled from: IndexV1Creator.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0002JX\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\b\u0012\u0004\u0012\u00020\u0015`\u00162.\u0010\u0017\u001a*\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00190\u0018j\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0019`\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lorg/fdroid/index/v1/IndexV1Creator;", "Lorg/fdroid/index/IndexCreator;", "Lorg/fdroid/index/v1/IndexV1;", "packageManager", "Landroid/content/pm/PackageManager;", "repoDir", "Ljava/io/File;", "packageNames", "", "", "repo", "Lorg/fdroid/index/v1/RepoV1;", "<init>", "(Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/util/Set;Lorg/fdroid/index/v1/RepoV1;)V", "createRepo", "createIndex", "addApp", "", "packageName", "apps", "Ljava/util/ArrayList;", "Lorg/fdroid/index/v1/AppV1;", "Lkotlin/collections/ArrayList;", "packages", "Ljava/util/HashMap;", "", "Lorg/fdroid/index/v1/PackageV1;", "Lkotlin/collections/HashMap;", "getApp", "packageInfo", "Landroid/content/pm/PackageInfo;", "getPackage", "index_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IndexV1Creator extends IndexCreator<IndexV1> {
    private final RepoV1 repo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexV1Creator(PackageManager packageManager, File repoDir, Set<String> packageNames, RepoV1 repo) {
        super(packageManager, repoDir, packageNames);
        Intrinsics.checkNotNullParameter(packageManager, "packageManager");
        Intrinsics.checkNotNullParameter(repoDir, "repoDir");
        Intrinsics.checkNotNullParameter(packageNames, "packageNames");
        Intrinsics.checkNotNullParameter(repo, "repo");
        this.repo = repo;
    }

    @Override // org.fdroid.index.IndexCreator
    public IndexV1 createRepo() throws IOException {
        prepareIconFolders();
        IndexV1 createIndex = createIndex();
        FileOutputStream fileOutputStream = new FileOutputStream(new File(getRepoDir(), IndexV1VerifierKt.DATA_FILE_NAME));
        try {
            Json json = IndexParser.getJson();
            KSerializer serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(IndexV1.class));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            JvmStreamsKt.encodeToStream(json, serializer, createIndex, fileOutputStream);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
            return createIndex;
        } finally {
        }
    }

    private final IndexV1 createIndex() {
        ArrayList<AppV1> arrayList = new ArrayList<>(getPackageNames().size());
        HashMap<String, List<PackageV1>> hashMap = new HashMap<>(getPackageNames().size());
        Iterator<String> it = getPackageNames().iterator();
        while (it.hasNext()) {
            addApp(it.next(), arrayList, hashMap);
        }
        return new IndexV1(this.repo, (Requests) null, arrayList, hashMap, 2, (DefaultConstructorMarker) null);
    }

    private final void addApp(String packageName, ArrayList<AppV1> apps, HashMap<String, List<PackageV1>> packages) {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(packageName, 4160);
            Intrinsics.checkNotNull(packageInfo);
            apps.add(getApp(packageInfo));
            PackageV1 packageV1 = getPackage(packageInfo);
            if (packageV1 == null) {
                Log.w("IndexV1Creator", "Got no package for " + packageName);
                return;
            }
            packages.put(packageName, CollectionsKt.listOf(packageV1));
        } catch (PackageManager.NameNotFoundException e) {
            Log.i("IndexV1Creator", "app disappeared during addApp: ", e);
        }
    }

    private final AppV1 getApp(PackageInfo packageInfo) {
        String copyIconToRepo = copyIconToRepo(packageInfo);
        String packageName = packageInfo.packageName;
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = null;
        return new AppV1((List) null, (List) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, String.valueOf(applicationInfo != null ? applicationInfo.loadLabel(getPackageManager()) : null), (String) null, (String) null, (String) null, (String) null, str, str, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, "Unknown", (String) null, (Long) null, copyIconToRepo, packageName, (Long) null, (Map) null, (List) null, 1937767935, (DefaultConstructorMarker) null);
    }

    private final PackageV1 getPackage(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo;
        Signature[] signatureArr;
        Integer num;
        List emptyList;
        List emptyList2;
        int i;
        File copyApkToRepo = copyApkToRepo(packageInfo);
        if (copyApkToRepo == null || (applicationInfo = packageInfo.applicationInfo) == null || (signatureArr = packageInfo.signatures) == null) {
            return null;
        }
        String hashFile = hashFile(copyApkToRepo);
        String name = copyApkToRepo.getName();
        IndexUtils indexUtils = IndexUtils.INSTANCE;
        byte[] byteArray = signatureArr[0].toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        String str = indexUtils.getsig(byteArray);
        byte[] byteArray2 = signatureArr[0].toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
        String packageSigner = indexUtils.getPackageSigner(byteArray2);
        String packageName = packageInfo.packageName;
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        long longVersionCode = PackageInfoCompat.getLongVersionCode(packageInfo);
        String str2 = packageInfo.versionName;
        if (str2 == null) {
            str2 = String.valueOf(PackageInfoCompat.getLongVersionCode(packageInfo));
        }
        String str3 = str2;
        Intrinsics.checkNotNull(name);
        long length = new File(applicationInfo.publicSourceDir).length();
        if (Build.VERSION.SDK_INT >= 24) {
            i = applicationInfo.minSdkVersion;
            num = Integer.valueOf(i);
        } else {
            num = null;
        }
        int i2 = applicationInfo.targetSdkVersion;
        String[] strArr = packageInfo.requestedPermissions;
        if (strArr == null) {
            emptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(strArr.length);
            int length2 = strArr.length;
            int i3 = 0;
            while (i3 < length2) {
                String str4 = strArr[i3];
                Intrinsics.checkNotNull(str4);
                arrayList.add(new PermissionV1(str4, null, 2, null));
                i3++;
                strArr = strArr;
            }
            emptyList = arrayList;
        }
        List emptyList3 = CollectionsKt.emptyList();
        List<String> parseNativeCode = parseNativeCode(packageInfo);
        FeatureInfo[] featureInfoArr = packageInfo.reqFeatures;
        if (featureInfoArr == null) {
            emptyList2 = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList(featureInfoArr.length);
            for (FeatureInfo featureInfo : featureInfoArr) {
                arrayList2.add(featureInfo.name);
            }
            emptyList2 = arrayList2;
        }
        return new PackageV1((Long) null, name, hashFile, "sha256", num, (Integer) null, Integer.valueOf(i2), packageName, str, packageSigner, length, (String) null, emptyList, emptyList3, Long.valueOf(longVersionCode), str3, parseNativeCode, emptyList2, (List) null, 264225, (DefaultConstructorMarker) null);
    }
}
