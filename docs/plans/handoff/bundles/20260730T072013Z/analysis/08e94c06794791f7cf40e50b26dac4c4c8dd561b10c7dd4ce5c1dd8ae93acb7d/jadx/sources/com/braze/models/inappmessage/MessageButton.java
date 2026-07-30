package com.braze.models.inappmessage;

import android.graphics.Color;
import android.net.Uri;
import com.braze.enums.inappmessage.ClickAction;
import com.braze.models.IPutIntoJson;
import com.braze.support.BrazeLogger;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\"\b\u0017\u0018\u0000 ?2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0001@B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\bBc\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\b\b\u0001\u0010\u0011\u001a\u00020\n\u0012\b\b\u0001\u0010\u0012\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0001\u0010\u0015\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J#\u0010\u001a\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000b\u0010#\u001a\u0004\b$\u0010%R$\u0010\r\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010&\u001a\u0004\b'\u0010(R(\u0010\u000f\u001a\u0004\u0018\u00010\u00192\b\u0010\"\u001a\u0004\u0018\u00010\u00198\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010)\u001a\u0004\b*\u0010+R$\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010\u0011\u001a\u00020\n8G@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010#\u001a\u0004\b6\u0010%\"\u0004\b7\u00108R\"\u0010\u0012\u001a\u00020\n8G@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010#\u001a\u0004\b9\u0010%\"\u0004\b:\u00108R\"\u0010\u0015\u001a\u00020\n8G@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010#\u001a\u0004\b;\u0010%\"\u0004\b<\u00108R\u0011\u0010>\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b=\u0010.¨\u0006A"}, d2 = {"Lcom/braze/models/inappmessage/MessageButton;", "Lcom/braze/models/IPutIntoJson;", "Lorg/json/JSONObject;", "Lcom/braze/models/inappmessage/IInAppMessageThemeable;", "<init>", "()V", "jsonObject", "darkThemeObject", "(Lorg/json/JSONObject;Lorg/json/JSONObject;)V", "darkThemeJsonObject", "", "id", "Lcom/braze/enums/inappmessage/ClickAction;", "clickAction", "", "uri", "text", "backgroundColor", "textColor", "", "openUriInWebview", ViewProps.BORDER_COLOR, "(Lorg/json/JSONObject;Lorg/json/JSONObject;ILcom/braze/enums/inappmessage/ClickAction;Ljava/lang/String;Ljava/lang/String;IIZI)V", "", "enableDarkTheme", "Landroid/net/Uri;", "setClickBehavior", "(Lcom/braze/enums/inappmessage/ClickAction;Landroid/net/Uri;)V", "forJsonPut", "()Lorg/json/JSONObject;", "Lorg/json/JSONObject;", "Lcom/braze/models/theme/b;", "darkTheme", "Lcom/braze/models/theme/b;", "value", "I", "getId", "()I", "Lcom/braze/enums/inappmessage/ClickAction;", "getClickAction", "()Lcom/braze/enums/inappmessage/ClickAction;", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "Ljava/lang/String;", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "Z", "getOpenUriInWebview", "()Z", "setOpenUriInWebview", "(Z)V", "getBackgroundColor", "setBackgroundColor", "(I)V", "getTextColor", "setTextColor", "getBorderColor", "setBorderColor", "getStringId", "stringId", "Companion", "com/braze/models/inappmessage/k", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public class MessageButton implements IPutIntoJson<JSONObject>, IInAppMessageThemeable {
    private static final String BG_COLOR = "bg_color";
    private static final String BORDER_COLOR = "border_color";
    private static final String CLICK_ACTION = "click_action";
    private static final String ID = "id";
    private static final String OPEN_URI_IN_WEBVIEW = "use_webview";
    private static final String TEXT = "text";
    private static final String TEXT_COLOR = "text_color";
    private static final String URI = "uri";
    private int backgroundColor;
    private int borderColor;
    private ClickAction clickAction;
    private com.braze.models.theme.b darkTheme;
    private int id;
    private JSONObject jsonObject;
    private boolean openUriInWebview;
    private String text;
    private int textColor;
    private Uri uri;
    public static final k Companion = new k();
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) MessageButton.class);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MessageButton(JSONObject jsonObject) {
        this(jsonObject, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String enableDarkTheme$lambda$2$lambda$1() {
        return "Cannot apply dark theme with a null themes wrapper";
    }

    public static /* synthetic */ void setClickBehavior$default(MessageButton messageButton, ClickAction clickAction, Uri uri, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setClickBehavior");
        }
        if ((i & 2) != 0) {
            uri = null;
        }
        messageButton.setClickBehavior(clickAction, uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setClickBehavior$lambda$3() {
        return "A non-null URI is required in order to set the button ClickAction to URI.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setClickBehavior$lambda$4() {
        return "ClickAction of URI is required in order to set a non-null URI";
    }

    @Override // com.braze.models.inappmessage.IInAppMessageThemeable
    public void enableDarkTheme() {
        com.braze.models.theme.b bVar = this.darkTheme;
        if (bVar == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.MessageButton$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String enableDarkTheme$lambda$2$lambda$1;
                    enableDarkTheme$lambda$2$lambda$1 = MessageButton.enableDarkTheme$lambda$2$lambda$1();
                    return enableDarkTheme$lambda$2$lambda$1;
                }
            }, 14, (Object) null);
            return;
        }
        Integer num = bVar.f182a;
        if (num != null) {
            this.backgroundColor = num.intValue();
        }
        Integer num2 = bVar.b;
        if (num2 != null) {
            this.textColor = num2.intValue();
        }
        Integer num3 = bVar.c;
        if (num3 != null) {
            this.borderColor = num3.intValue();
        }
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final int getBorderColor() {
        return this.borderColor;
    }

    public final ClickAction getClickAction() {
        return this.clickAction;
    }

    public final int getId() {
        return this.id;
    }

    public final boolean getOpenUriInWebview() {
        return this.openUriInWebview;
    }

    public final String getStringId() {
        return String.valueOf(this.id);
    }

    public final String getText() {
        return this.text;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    public final void setBorderColor(int i) {
        this.borderColor = i;
    }

    public final void setClickBehavior(ClickAction clickAction) {
        Intrinsics.checkNotNullParameter(clickAction, "clickAction");
        setClickBehavior$default(this, clickAction, null, 2, null);
    }

    public final void setOpenUriInWebview(boolean z) {
        this.openUriInWebview = z;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
    }

    public MessageButton() {
        this.id = -1;
        this.clickAction = ClickAction.NONE;
        int parseColor = Color.parseColor("#1B78CF");
        this.backgroundColor = parseColor;
        this.textColor = -1;
        this.borderColor = parseColor;
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut, reason: avoid collision after fix types in other method */
    public JSONObject getPropertiesJSONObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.id);
            jSONObject.put("click_action", this.clickAction.toString());
            Uri uri = this.uri;
            if (uri != null) {
                jSONObject.put("uri", String.valueOf(uri));
            }
            jSONObject.putOpt("text", this.text);
            jSONObject.put("bg_color", this.backgroundColor);
            jSONObject.put("text_color", this.textColor);
            jSONObject.put("use_webview", this.openUriInWebview);
            jSONObject.put(BORDER_COLOR, this.borderColor);
            return jSONObject;
        } catch (JSONException unused) {
            return this.jsonObject;
        }
    }

    public final void setClickBehavior(ClickAction clickAction, Uri uri) {
        Intrinsics.checkNotNullParameter(clickAction, "clickAction");
        if (uri == null && clickAction == ClickAction.URI) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.MessageButton$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String clickBehavior$lambda$3;
                    clickBehavior$lambda$3 = MessageButton.setClickBehavior$lambda$3();
                    return clickBehavior$lambda$3;
                }
            }, 12, (Object) null);
        } else if (uri != null && clickAction != ClickAction.URI) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.inappmessage.MessageButton$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String clickBehavior$lambda$4;
                    clickBehavior$lambda$4 = MessageButton.setClickBehavior$lambda$4();
                    return clickBehavior$lambda$4;
                }
            }, 12, (Object) null);
        } else {
            this.clickAction = clickAction;
            this.uri = uri;
        }
    }

    public /* synthetic */ MessageButton(JSONObject jSONObject, JSONObject jSONObject2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(jSONObject, (i & 2) != 0 ? null : jSONObject2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MessageButton(org.json.JSONObject r14, org.json.JSONObject r15) {
        /*
            r13 = this;
            java.lang.String r0 = "jsonObject"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "id"
            r1 = -1
            int r5 = r14.optInt(r0, r1)
            java.lang.String r0 = "click_action"
            com.braze.enums.inappmessage.ClickAction r1 = com.braze.enums.inappmessage.ClickAction.NEWS_FEED
            r2 = 0
            java.lang.String r0 = r14.getString(r0)     // Catch: java.lang.Exception -> L4f
            java.lang.String r3 = "getString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)     // Catch: java.lang.Exception -> L4f
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Exception -> L4f
            java.lang.String r4 = "US"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: java.lang.Exception -> L4f
            java.lang.String r0 = r0.toUpperCase(r3)     // Catch: java.lang.Exception -> L4f
            java.lang.String r3 = "toUpperCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)     // Catch: java.lang.Exception -> L4f
            com.braze.enums.inappmessage.ClickAction[] r3 = com.braze.enums.inappmessage.ClickAction.values()     // Catch: java.lang.Exception -> L4f
            int r4 = r3.length     // Catch: java.lang.Exception -> L4f
            r6 = r2
        L31:
            if (r6 >= r4) goto L47
            r7 = r3[r6]     // Catch: java.lang.Exception -> L4f
            java.lang.String r8 = r7.name()     // Catch: java.lang.Exception -> L4f
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r0)     // Catch: java.lang.Exception -> L4f
            if (r8 == 0) goto L44
            if (r7 != 0) goto L42
            goto L4f
        L42:
            r6 = r7
            goto L50
        L44:
            int r6 = r6 + 1
            goto L31
        L47:
            java.util.NoSuchElementException r0 = new java.util.NoSuchElementException     // Catch: java.lang.Exception -> L4f
            java.lang.String r3 = "Array contains no element matching the predicate."
            r0.<init>(r3)     // Catch: java.lang.Exception -> L4f
            throw r0     // Catch: java.lang.Exception -> L4f
        L4f:
            r6 = r1
        L50:
            java.lang.String r0 = "uri"
            java.lang.String r7 = r14.optString(r0)
            java.lang.String r0 = "text"
            java.lang.String r8 = r14.optString(r0)
            java.lang.String r0 = "optString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            java.lang.String r0 = "bg_color"
            int r9 = r14.optInt(r0)
            java.lang.String r0 = "text_color"
            int r10 = r14.optInt(r0)
            java.lang.String r0 = "use_webview"
            boolean r11 = r14.optBoolean(r0, r2)
            java.lang.String r0 = "border_color"
            int r12 = r14.optInt(r0)
            r2 = r13
            r3 = r14
            r4 = r15
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.models.inappmessage.MessageButton.<init>(org.json.JSONObject, org.json.JSONObject):void");
    }

    private MessageButton(JSONObject jSONObject, JSONObject jSONObject2, int i, ClickAction clickAction, String str, String str2, int i2, int i3, boolean z, int i4) {
        this.id = -1;
        this.clickAction = ClickAction.NONE;
        int parseColor = Color.parseColor("#1B78CF");
        this.backgroundColor = parseColor;
        this.textColor = -1;
        this.borderColor = parseColor;
        this.jsonObject = jSONObject;
        this.id = i;
        this.clickAction = clickAction;
        if (clickAction == ClickAction.URI && str != null && !StringsKt.isBlank(str)) {
            this.uri = Uri.parse(str);
        }
        this.text = str2;
        this.backgroundColor = i2;
        this.textColor = i3;
        this.openUriInWebview = z;
        this.borderColor = i4;
        this.darkTheme = jSONObject2 != null ? new com.braze.models.theme.b(jSONObject2) : null;
    }
}
