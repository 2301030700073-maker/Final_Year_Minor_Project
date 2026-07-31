package app.k9mail.autodiscovery.autoconfig;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ClientConfigParser$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ClientConfigParser f$0;
    public final /* synthetic */ Ref$ObjectRef f$1;

    public /* synthetic */ ClientConfigParser$$ExternalSyntheticLambda1(ClientConfigParser clientConfigParser, Ref$ObjectRef ref$ObjectRef) {
        this.f$0 = clientConfigParser;
        this.f$1 = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ClientConfigParser clientConfigParser = this.f$0;
        Ref$ObjectRef ref$ObjectRef = this.f$1;
        switch (i) {
            case 0:
                XmlPullParser xmlPullParser = clientConfigParser.pullParser;
                if (((Integer) obj).intValue() == 2) {
                    if (Intrinsics.areEqual(xmlPullParser.getName(), "emailProvider")) {
                        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
                        if (attributeValue == null) {
                            throw new AutoconfigParserException("Missing 'emailProvider.id' attribute", null);
                        }
                        if (!ClientConfigParser.isValidHostname(attributeValue)) {
                            throw new AutoconfigParserException("Invalid 'emailProvider.id' attribute", null);
                        }
                        clientConfigParser.readElement(new NavControllerImpl$$ExternalSyntheticLambda0(clientConfigParser, ref$BooleanRef, arrayList, arrayList2));
                        if (!ref$BooleanRef.element) {
                            throw new AutoconfigParserException("Valid 'domain' element required", null);
                        }
                        if (arrayList.isEmpty()) {
                            throw new AutoconfigParserException("No supported 'incomingServer' element found", null);
                        }
                        if (arrayList2.isEmpty()) {
                            throw new AutoconfigParserException("No supported 'outgoingServer' element found", null);
                        }
                        ref$ObjectRef.element = new AutoconfigParserResult.Settings(arrayList, arrayList2);
                    } else {
                        clientConfigParser.skipElement();
                    }
                }
                return unit;
            default:
                int intValue = ((Integer) obj).intValue();
                if (intValue != 4) {
                    throw new AutoconfigParserException(CameraDevices$CC.m("Expected text, but got ", XmlPullParser.TYPES[intValue]), null);
                }
                String text = clientConfigParser.pullParser.getText();
                text.getClass();
                ref$ObjectRef.element = text;
                return unit;
        }
    }

    public /* synthetic */ ClientConfigParser$$ExternalSyntheticLambda1(Ref$ObjectRef ref$ObjectRef, ClientConfigParser clientConfigParser) {
        this.f$1 = ref$ObjectRef;
        this.f$0 = clientConfigParser;
    }
}
