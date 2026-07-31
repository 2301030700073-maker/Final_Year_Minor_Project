package expo.modules.updates.db.entity;

import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.enums.UpdateStatus;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: UpdateEntity.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010@\u001a\u00020\u0007R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010,\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0011\u00102\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b3\u0010\u0016R\u001e\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0012\"\u0004\b6\u0010\u0014R\u001e\u00107\u001a\u0002088\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001e\u0010=\u001a\u0002088\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010:\"\u0004\b?\u0010<¨\u0006A"}, d2 = {"Lexpo/modules/updates/db/entity/UpdateEntity;", "", "id", "Ljava/util/UUID;", "commitTime", "Ljava/util/Date;", UpdatesConfiguration.UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY, "", UpdatesConfiguration.UPDATES_CONFIGURATION_SCOPE_KEY_KEY, "manifest", "Lorg/json/JSONObject;", "<init>", "(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V", "getId", "()Ljava/util/UUID;", "setId", "(Ljava/util/UUID;)V", "getCommitTime", "()Ljava/util/Date;", "setCommitTime", "(Ljava/util/Date;)V", "getRuntimeVersion", "()Ljava/lang/String;", "setRuntimeVersion", "(Ljava/lang/String;)V", "getScopeKey", "setScopeKey", "getManifest", "()Lorg/json/JSONObject;", "setManifest", "(Lorg/json/JSONObject;)V", "launchAssetId", "", "getLaunchAssetId", "()Ljava/lang/Long;", "setLaunchAssetId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "status", "Lexpo/modules/updates/db/enums/UpdateStatus;", "getStatus", "()Lexpo/modules/updates/db/enums/UpdateStatus;", "setStatus", "(Lexpo/modules/updates/db/enums/UpdateStatus;)V", "keep", "", "getKeep", "()Z", "setKeep", "(Z)V", "loggingId", "getLoggingId", "lastAccessed", "getLastAccessed", "setLastAccessed", "successfulLaunchCount", "", "getSuccessfulLaunchCount", "()I", "setSuccessfulLaunchCount", "(I)V", "failedLaunchCount", "getFailedLaunchCount", "setFailedLaunchCount", "debugInfo", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class UpdateEntity {
    private Date commitTime;
    private int failedLaunchCount;
    private UUID id;
    private boolean keep;
    private Date lastAccessed;
    private Long launchAssetId;
    private JSONObject manifest;
    private String runtimeVersion;
    private String scopeKey;
    private UpdateStatus status;
    private int successfulLaunchCount;

    public UpdateEntity(UUID id, Date commitTime, String runtimeVersion, String scopeKey, JSONObject manifest) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(commitTime, "commitTime");
        Intrinsics.checkNotNullParameter(runtimeVersion, "runtimeVersion");
        Intrinsics.checkNotNullParameter(scopeKey, "scopeKey");
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        this.id = id;
        this.commitTime = commitTime;
        this.runtimeVersion = runtimeVersion;
        this.scopeKey = scopeKey;
        this.manifest = manifest;
        this.status = UpdateStatus.PENDING;
        this.lastAccessed = new Date();
    }

    public final UUID getId() {
        return this.id;
    }

    public final void setId(UUID uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<set-?>");
        this.id = uuid;
    }

    public final Date getCommitTime() {
        return this.commitTime;
    }

    public final void setCommitTime(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.commitTime = date;
    }

    public final String getRuntimeVersion() {
        return this.runtimeVersion;
    }

    public final void setRuntimeVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.runtimeVersion = str;
    }

    public final String getScopeKey() {
        return this.scopeKey;
    }

    public final void setScopeKey(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.scopeKey = str;
    }

    public final JSONObject getManifest() {
        return this.manifest;
    }

    public final void setManifest(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.manifest = jSONObject;
    }

    public final Long getLaunchAssetId() {
        return this.launchAssetId;
    }

    public final void setLaunchAssetId(Long l) {
        this.launchAssetId = l;
    }

    public final UpdateStatus getStatus() {
        return this.status;
    }

    public final void setStatus(UpdateStatus updateStatus) {
        Intrinsics.checkNotNullParameter(updateStatus, "<set-?>");
        this.status = updateStatus;
    }

    public final boolean getKeep() {
        return this.keep;
    }

    public final void setKeep(boolean z) {
        this.keep = z;
    }

    public final String getLoggingId() {
        String uuid = this.id.toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        String lowerCase = uuid.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public final Date getLastAccessed() {
        return this.lastAccessed;
    }

    public final void setLastAccessed(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.lastAccessed = date;
    }

    public final int getSuccessfulLaunchCount() {
        return this.successfulLaunchCount;
    }

    public final void setSuccessfulLaunchCount(int i) {
        this.successfulLaunchCount = i;
    }

    public final int getFailedLaunchCount() {
        return this.failedLaunchCount;
    }

    public final void setFailedLaunchCount(int i) {
        this.failedLaunchCount = i;
    }

    public final String debugInfo() {
        String jSONObject = new JSONObject(MapsKt.mapOf(TuplesKt.to("id", this.id.toString()), TuplesKt.to("status", this.status.name()))).toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
        return jSONObject;
    }
}
