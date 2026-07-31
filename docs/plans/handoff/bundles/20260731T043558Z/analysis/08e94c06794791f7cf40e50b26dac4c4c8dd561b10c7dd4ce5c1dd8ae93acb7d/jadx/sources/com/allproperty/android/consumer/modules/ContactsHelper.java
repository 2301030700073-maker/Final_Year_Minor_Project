package com.allproperty.android.consumer.modules;

import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContactsHelper.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0014\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/allproperty/android/consumer/modules/ContactsHelper;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "getConstants", "", "openContactForm", "", "contact", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "toByteArray", "", "bitmap", "Landroid/graphics/Bitmap;", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ContactsHelper extends ReactContextBaseJavaModule {
    private static final String COMPANY = "COMPANY";
    private static final String IMAGE = "IMAGE";
    private static final String NAME = "NAME";
    private static final String PHONE = "PHONE";
    private static final String REACT_CLASS = "ContactsHelper";
    private final ReactApplicationContext context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactsHelper(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to(NAME, NAME), TuplesKt.to(COMPANY, COMPANY), TuplesKt.to("IMAGE", "IMAGE"), TuplesKt.to(PHONE, PHONE));
    }

    @ReactMethod
    public final void openContactForm(ReadableMap contact, Promise promise) {
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(contact, "contact");
        Intrinsics.checkNotNullParameter(promise, "promise");
        String str4 = "";
        if (contact.hasKey(NAME)) {
            str = contact.getString(NAME);
        } else {
            str = "";
        }
        if (!contact.hasKey(COMPANY)) {
            str2 = "";
        } else {
            str2 = contact.getString(COMPANY);
        }
        if (!contact.hasKey("IMAGE")) {
            str3 = "";
        } else {
            str3 = contact.getString("IMAGE");
        }
        if (contact.hasKey(PHONE)) {
            str4 = contact.getString(PHONE);
        }
        Intent intent = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT", Uri.parse("tel:" + str4));
        intent.setFlags(268435456);
        intent.putExtra("com.android.contacts.action.FORCE_CREATE", true);
        intent.putExtra("name", str);
        intent.putExtra("company", str2);
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        bundle.putSerializable("data", arrayList);
        intent.putExtras(bundle);
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str3).openConnection())).getInputStream());
            ContentValues contentValues = new ContentValues();
            Intrinsics.checkNotNull(decodeStream);
            contentValues.put("data15", toByteArray(decodeStream));
            contentValues.put("mimetype", "vnd.android.cursor.item/photo");
            arrayList.add(contentValues);
        } catch (Exception unused) {
        }
        this.context.startActivity(intent);
        promise.resolve(null);
    }

    private final byte[] toByteArray(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
        }
        Intrinsics.checkNotNull(byteArray);
        return byteArray;
    }
}
