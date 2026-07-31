package org.schabi.newpipe.error;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public enum UserAction {
    /* JADX INFO: Fake field, exist only in values array */
    USER_REPORT("user report"),
    UI_ERROR("ui error"),
    DATABASE_IMPORT_EXPORT("database import or export"),
    SUBSCRIPTION_CHANGE("subscription change"),
    SUBSCRIPTION_UPDATE("subscription update"),
    SUBSCRIPTION_GET("get subscription"),
    SUBSCRIPTION_IMPORT_EXPORT("subscription import or export"),
    LOAD_IMAGE("load image"),
    SOMETHING_ELSE("something else"),
    SEARCHED("searched"),
    GET_SUGGESTIONS("get suggestions"),
    REQUESTED_STREAM("requested stream"),
    REQUESTED_CHANNEL("requested channel"),
    REQUESTED_PLAYLIST("requested playlist"),
    REQUESTED_KIOSK("requested kiosk"),
    REQUESTED_COMMENTS("requested comments"),
    REQUESTED_COMMENT_REPLIES("requested comment replies"),
    REQUESTED_FEED("requested feed"),
    REQUESTED_BOOKMARK("bookmark"),
    DELETE_FROM_HISTORY("delete from history"),
    PLAY_STREAM("play stream"),
    DOWNLOAD_OPEN_DIALOG("download open dialog"),
    DOWNLOAD_POSTPROCESSING("download post-processing"),
    DOWNLOAD_FAILED("download failed"),
    NEW_STREAMS_NOTIFICATIONS("new streams notifications"),
    PREFERENCES_MIGRATION("migration of preferences"),
    SHARE_TO_NEWPIPE("share to newpipe"),
    CHECK_FOR_NEW_APP_VERSION("check for new app version"),
    OPEN_INFO_ITEM_DIALOG("open info item dialog"),
    GETTING_MAIN_SCREEN_TAB("getting main screen tab"),
    PLAY_ON_POPUP("play on popup"),
    /* JADX INFO: Fake field, exist only in values array */
    SUBSCRIPTIONS("loading subscriptions");

    private final String message;

    UserAction(String str) {
        this.message = str;
    }

    public final String getMessage() {
        return this.message;
    }
}
