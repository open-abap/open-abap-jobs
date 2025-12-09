import {kernel_scheduler} from '../output/kernel_scheduler.clas.mjs';
import {initializeABAP} from "../output/init.mjs";
await initializeABAP();
kernel_scheduler.run();