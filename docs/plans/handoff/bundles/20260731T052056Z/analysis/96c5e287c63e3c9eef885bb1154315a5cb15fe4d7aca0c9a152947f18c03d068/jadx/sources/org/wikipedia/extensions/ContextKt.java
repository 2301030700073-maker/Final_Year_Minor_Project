package org.wikipedia.extensions;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.SparseArray;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;
import kotlin.uuid.UuidKt;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ContextKt {
    public static final /* synthetic */ KProperty[] $$delegatedProperties = {new PropertyReference1Impl(CallableReference.NoReceiver.INSTANCE, ContextKt.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1)};
    public static final PreferenceDataStoreSingletonDelegate dataStore$delegate = ContextsKt.preferencesDataStore$default("wikipedia_datastore");

    public static final SVGAndroidRenderer getInstrument(Context context) {
        context.getClass();
        BaseActivity baseActivity = context instanceof BaseActivity ? (BaseActivity) context : null;
        if (baseActivity != null) {
            return baseActivity._instrument;
        }
        return null;
    }

    public static final String getString(Context context, String str, int i, Object... objArr) {
        context.getClass();
        str.getClass();
        return NodeUtils.getStringForLocale(context, new Locale(str), i, Arrays.copyOf(objArr, objArr.length));
    }

    public static final SparseArray getStrings(Context context, PageTitle pageTitle, int[] iArr) {
        pageTitle.getClass();
        Locale locale = new Locale(pageTitle.wikiSite.languageCode);
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        int i = 0;
        Locale locale2 = UuidKt.getLocales(configuration).mImpl.get(0);
        SparseArray sparseArray = new SparseArray();
        if (Intrinsics.areEqual(locale2 != null ? locale2.getLanguage() : null, locale.getLanguage())) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                sparseArray.put(i2, context.getString(i2));
                i++;
            }
            return sparseArray;
        }
        NodeUtils.setDesiredLocale(configuration, locale);
        Resources resources = context.createConfigurationContext(configuration).getResources();
        int length2 = iArr.length;
        while (i < length2) {
            int i3 = iArr[i];
            sparseArray.put(i3, resources.getString(i3));
            i++;
        }
        configuration.setLocale(locale2);
        context.createConfigurationContext(configuration);
        return sparseArray;
    }

    public static final String getString(Context context, PageTitle pageTitle, int i) {
        pageTitle.getClass();
        return NodeUtils.getStringForLocale(context, new Locale(pageTitle.wikiSite.languageCode), i, new Object[0]);
    }
}
