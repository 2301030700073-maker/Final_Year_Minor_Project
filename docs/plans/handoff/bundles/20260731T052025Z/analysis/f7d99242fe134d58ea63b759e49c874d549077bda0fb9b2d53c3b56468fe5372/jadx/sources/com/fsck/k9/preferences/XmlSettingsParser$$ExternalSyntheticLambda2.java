package com.fsck.k9.preferences;

import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda16;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.ConnectionPool;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class XmlSettingsParser$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ConnectionPool f$0;
    public final /* synthetic */ ArrayList f$1;

    public /* synthetic */ XmlSettingsParser$$ExternalSyntheticLambda2(ConnectionPool connectionPool, ArrayList arrayList, int i) {
        this.$r8$classId = i;
        this.f$0 = connectionPool;
        this.f$1 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        SettingsFile$Account settingsFile$Account = null;
        Unit unit = Unit.INSTANCE;
        ArrayList arrayList = this.f$1;
        switch (i) {
            case 0:
                ConnectionPool connectionPool = this.f$0;
                XmlPullParser xmlPullParser = (XmlPullParser) connectionPool.delegate;
                if (((Integer) obj).intValue() == 2) {
                    if (!Intrinsics.areEqual(xmlPullParser.getName(), "account")) {
                        connectionPool.skipElement();
                        break;
                    } else {
                        String attributeValue = xmlPullParser.getAttributeValue(null, "uuid");
                        try {
                            UUID.fromString(attributeValue);
                        } catch (IllegalArgumentException e) {
                            Log.w(e, "Invalid account UUID: %s", attributeValue);
                            attributeValue = null;
                        }
                        if (attributeValue == null) {
                            connectionPool.skipElement();
                        } else {
                            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
                            Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
                            Ref$ObjectRef ref$ObjectRef5 = new Ref$ObjectRef();
                            Ref$ObjectRef ref$ObjectRef6 = new Ref$ObjectRef();
                            connectionPool.readElement(new NavHostKt$$ExternalSyntheticLambda16(connectionPool, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3, ref$ObjectRef4, ref$ObjectRef5, ref$ObjectRef6, 1));
                            if (ref$ObjectRef.element == null) {
                                ref$ObjectRef.element = attributeValue;
                            }
                            settingsFile$Account = new SettingsFile$Account(attributeValue, (String) ref$ObjectRef.element, (SettingsFile$Server) ref$ObjectRef2.element, (SettingsFile$Server) ref$ObjectRef3.element, (Map) ref$ObjectRef4.element, (List) ref$ObjectRef5.element, (List) ref$ObjectRef6.element);
                        }
                        if (settingsFile$Account != null) {
                            String str = settingsFile$Account.uuid;
                            if (!arrayList.isEmpty()) {
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    if (((SettingsFile$Account) it.next()).uuid.equals(str)) {
                                        Log.w("Duplicate account entries with UUID %s. Ignoring!", str);
                                        break;
                                    }
                                }
                            }
                            arrayList.add(settingsFile$Account);
                            break;
                        }
                    }
                }
                break;
            case 1:
                ConnectionPool connectionPool2 = this.f$0;
                XmlPullParser xmlPullParser2 = (XmlPullParser) connectionPool2.delegate;
                if (((Integer) obj).intValue() == 2) {
                    if (!Intrinsics.areEqual(xmlPullParser2.getName(), "folder")) {
                        connectionPool2.skipElement();
                        break;
                    } else {
                        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "name");
                        SettingsFile$Folder settingsFile$Folder = attributeValue2 != null ? new SettingsFile$Folder(attributeValue2, connectionPool2.readSettingsContainer()) : null;
                        if (settingsFile$Folder != null) {
                            arrayList.add(settingsFile$Folder);
                            break;
                        }
                    }
                }
                break;
            default:
                if (((Integer) obj).intValue() == 2) {
                    ConnectionPool connectionPool3 = this.f$0;
                    if (!Intrinsics.areEqual(((XmlPullParser) connectionPool3.delegate).getName(), "identity")) {
                        connectionPool3.skipElement();
                        break;
                    } else {
                        Ref$ObjectRef ref$ObjectRef7 = new Ref$ObjectRef();
                        Ref$ObjectRef ref$ObjectRef8 = new Ref$ObjectRef();
                        Ref$ObjectRef ref$ObjectRef9 = new Ref$ObjectRef();
                        Ref$ObjectRef ref$ObjectRef10 = new Ref$ObjectRef();
                        connectionPool3.readElement(new XmlSettingsParser$$ExternalSyntheticLambda7(connectionPool3, ref$ObjectRef7, ref$ObjectRef8, ref$ObjectRef9, ref$ObjectRef10, 0));
                        arrayList.add(new SettingsFile$Identity((String) ref$ObjectRef7.element, (String) ref$ObjectRef8.element, (String) ref$ObjectRef9.element, (Map) ref$ObjectRef10.element));
                        break;
                    }
                }
                break;
        }
        return unit;
    }
}
