package com.android.quickstep;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.provider.SearchIndexablesContract;
import android.provider.SearchIndexablesProvider;
import android.util.Xml;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class LauncherSearchIndexablesProvider extends SearchIndexablesProvider {
    public boolean onCreate() {
        return true;
    }

    public Cursor queryNonIndexableKeys(String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(SearchIndexablesContract.NON_INDEXABLES_KEYS_COLUMNS);
        if (!((LauncherApps) getContext().getSystemService(LauncherApps.class)).hasShortcutHostPermission()) {
            try {
                XmlResourceParser xml = getContext().getResources().getXml(R.xml.indexable_launcher_prefs);
                try {
                    int depth = xml.getDepth();
                    int[] iArr = {android.R.attr.key};
                    while (true) {
                        int next = xml.next();
                        if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                            if (next == 2) {
                                TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(Xml.asAttributeSet(xml), iArr);
                                matrixCursor.addRow(new String[]{obtainStyledAttributes.getString(0)});
                                obtainStyledAttributes.recycle();
                            }
                        }
                    }
                    xml.close();
                } catch (Throwable th) {
                    if (xml != null) {
                        try {
                            xml.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException | XmlPullParserException e) {
                throw new RuntimeException(e);
            }
        }
        return matrixCursor;
    }

    public Cursor queryRawData(String[] strArr) {
        return new MatrixCursor(SearchIndexablesContract.INDEXABLES_RAW_COLUMNS);
    }

    public Cursor queryXmlResources(String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(SearchIndexablesContract.INDEXABLES_XML_RES_COLUMNS);
        matrixCursor.newRow().add("xmlResId", Integer.valueOf(R.xml.indexable_launcher_prefs)).add("intentAction", "android.intent.action.APPLICATION_PREFERENCES").add("intentTargetPackage", getContext().getPackageName()).add("intentTargetClass", getContext().getPackageManager().resolveActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(getContext().getPackageName()), 0).activityInfo.name);
        return matrixCursor;
    }
}
